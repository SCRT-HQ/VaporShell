Param
(
  [parameter(Position=0)]
  $ForceDotSource = $false,
  [parameter(Position=1)]
  $QuietLoad = $false
)
#Get public and private function definition files.
$Public = @( Get-ChildItem -Path (Join-Path $PSScriptRoot "Public") -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path (Join-Path $PSScriptRoot "Private") -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$VaporshellPath = (Resolve-Path $PSScriptRoot).Path

#Execute a scriptblock to load each function instead of dot sourcing (Issue #5)
foreach ($file in @($Public + $Private)) {
    if ($ForceDotSource) {
        . $file.FullName
    }
    else {
        $ExecutionContext.InvokeCommand.InvokeScript(
            $false, 
            (
                [scriptblock]::Create(
                    [io.file]::ReadAllText(
                        $file.FullName,
                        [Text.Encoding]::UTF8
                    )
                )
            ), 
            $null, 
            $null
        )
    }
}
if ($env:CI -or $QuietLoad) {
    Import-AWSSDK
}
else {
    Import-AWSSDK -Verbose
}

# Add in Pseudo Parameter variables from private text file (allows growth in case additional parameters need to be added in)
$vars = @()
$varDict = . (Resolve-Path (Join-Path $VaporshellPath "bin") "PseudoParams.ps1").Path
ForEach ($key in $varDict.Keys) {
    New-Variable -Name $varDict[$key] -Value $key
    $vars += $varDict[$key]
}

Export-ModuleMember -Function $Public.Basename -Variable $vars -Verbose:$false