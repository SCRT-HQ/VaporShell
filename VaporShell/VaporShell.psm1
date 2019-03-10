<#
    ~ ~ ~ IMPORTANT! ~ ~ ~

    This file is only for local development so that
    Update-VSResourceFunctions still works as expected.

    Please make any PSM1 content changes in the
    Compile task of the psake.ps1 build script.
#>
#Get public and private function definition files.
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$VaporshellPath = $PSScriptRoot

#Execute a scriptblock to load each function instead of dot sourcing (Issue #5)
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

# Load the .NET assemblies
$sdkPath = if ($PSVersionTable.PSVersion.Major -ge 6) {
    Write-Verbose "Loading the *netcore* assemblies!"
    Join-Path $Script:VaporshellPath "bin\NetCore" -Resolve
}
else {
    Write-Verbose "Loading the *net45* assemblies!"
    Join-Path $Script:VaporshellPath "bin\Net45" -Resolve
}
'AWSSDK.Core','AWSSDK.SecurityToken','AWSSDK.CloudFormation','AWSSDK.S3','Newtonsoft.Json','YamlDotNet','VaporShell'  | ForEach-Object {
    $assName = "$($_).dll"
    $assPath = (Join-Path $sdkPath $assName)
    if (Test-Path $assPath) {
        try {
            [System.Reflection.Assembly]::LoadFrom($assPath) | Out-Null
            Write-Verbose "Loaded: $assName"
        }
        catch {
            Write-Warning "Failed to load: $assName``n``t  $($_.Exception.Message)"
        }
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
