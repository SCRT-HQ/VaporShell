#Get public and private function definition files.
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )

#Execute a scriptblock to load each function instead of  (Issue #5)
foreach ($file in @($Public + $Private)) {
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


# Add in Pseudo Parameter variables from private text file (allows growth in case additional parameters need to be added in)
$vars = @()
Get-Content -Path "$PSScriptRoot\Private\PseudoParams.txt" | ForEach-Object {
    $name = "_$(($_ -replace "::").Trim())"
    New-Variable -Name $name -Value "$(($_).Trim())"
    $vars += $name
}

Export-ModuleMember -Function $Public.Basename -Variable $vars -Verbose:$false