Param(
    [Parameter(Position = 0)]
    [String]
    $ModuleName = $Script:ModuleName,
    [Parameter(Position = 1)]
    [String]
    $ModuleVersion = $Script:ModuleVersion
)
$changeLog = if ($env:BUILD_REASON -eq 'Schedule') {
    @(
        "## $ModuleVersion - $(Get-Date -Format 'yyyy-MM-dd') (Scheduled Release)"
        ''
        '> _This is a standard scheduled release to bring this module up to the current CloudFormation specification sheet._'
        ''
        '* Miscellaneous'
        '  * Brought Resource Type and Property Type functions up to current spec sheet.'
        ''
        '***'
        ''
        '# Last Changelog Entry'
        ''
    )
}
else {
    @()
}
$cl = Get-Content "$PSScriptRoot\..\CHANGELOG.md"
$lastClEntries = $cl | Where-Object {$_ -match '^## .* - \d{4}-\d{2}-\d{2}'} | Select-Object -First 2
$changeLog += ($cl[($cl.IndexOf($lastClEntries[0]))..(($cl.IndexOf($lastClEntries[1]) - 1))])
@"
# Changelog

$($changeLog -join "`n")
***

# Instructions

1. [Click here](https://github.com/scrthq/$($ModuleName)/releases/download/v$($ModuleVersion)/$($ModuleName).zip) to download the *$($ModuleName).zip* file attached to the release.
2. **If on Windows**: Right-click the downloaded zip, select Properties, then unblock the file.
    > _This is to prevent having to unblock each file individually after unzipping._
3. Unzip the archive.
4. (Optional) Place the module folder somewhere in your ``PSModulePath``.
    > _You can view the paths listed by running the environment variable ```$env:PSModulePath``_
5. Import the module, using the full path to the PSD1 file in place of ``$($ModuleName)`` if the unzipped module folder is not in your ``PSModulePath``:
    ``````powershell
    # In `$env:PSModulePath
    Import-Module $($ModuleName)

    # Otherwise, provide the path to the manifest:
    Import-Module -Path C:\MyPSModules\$($ModuleName)\$($ModuleVersion)\$($ModuleName).psd1
    ``````
"@
