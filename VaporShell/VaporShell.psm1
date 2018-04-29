Param
(
  [parameter(Position=0)]
  $ForceDotSource = $false
)
#Get public and private function definition files.
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$VaporshellPath = $PSScriptRoot

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

# Load AWS .NET SDK if not already loaded
if (!([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {$_.Location -like "*AWSSDK.CloudFormation.dll"})) {
    if ($IsCoreCLR) {
        Write-Verbose "Loading AWS SDK for *NetCore*!"
        $sdkPath = (Join-Path $Script:VaporshellPath "bin\NetCore" -Resolve)
    }
    else {
        Write-Verbose "Loading AWS SDK for *Net45*!"
        $sdkPath = (Join-Path $Script:VaporshellPath "bin\Net45" -Resolve)
    }
    Get-ChildItem $sdkPath -Filter "*.dll" | ForEach-Object {
        [reflection.assembly]::LoadFrom("$($_.FullName)") | Out-Null
    }
}

# Add Intrinsic and Condition Function short aliases
$aliases = @()
Get-ChildItem "$PSScriptRoot\Public\Intrinsic Functions" | ForEach-Object {
    $aliases += ($_.BaseName).Replace('Add-','')
    New-Alias -Name ($_.BaseName).Replace('Add-','') -Value $_.BaseName -Force
}
Get-ChildItem "$PSScriptRoot\Public\Condition Functions" | ForEach-Object {
    $aliases += ($_.BaseName).Replace('Add-','')
    New-Alias -Name ($_.BaseName).Replace('Add-','') -Value $_.BaseName -Force
}

# Add in Pseudo Parameter variables from private text file (allows growth in case additional parameters need to be added in)
$vars = @()
Get-Content -Path "$PSScriptRoot\Private\PseudoParams.txt" | ForEach-Object {
    $name = "_$(($_ -replace "::").Trim())"
    New-Variable -Name $name -Value "$(($_).Trim())"
    $vars += $name
}

$DSLModulePath = (Resolve-Path "$PSScriptRoot\DSL\VaporShell.DSL.psm1").Path
Import-Module $DSLModulePath -DisableNameChecking -Force -Verbose:$false

Export-ModuleMember -Function ($Public.Basename + (Get-Command -Module VaporShell.DSL).Name) -Variable $vars -Alias $aliases -Verbose:$false