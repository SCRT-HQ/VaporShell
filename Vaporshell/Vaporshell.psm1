#Get public and private function definition files.
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private -Recurse -Filter "*.ps1" -ErrorAction SilentlyContinue )

#Dot source the files
Foreach ($import in @($Public + $Private)) {
    Try {
        . $import.fullname
    }
    Catch {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

# Add in Pseudo Paramater variables from private text file (allows growth in case additional parameters need to be added in)
$vars = @()
Get-Content -Path "$PSScriptRoot\Private\PseudoParams.txt" | ForEach-Object {
    $name = "_$(($_ -replace "::").Trim())"
    New-Variable -Name $name -Value $_
    $vars += $name
}

Export-ModuleMember -Function $Public.Basename -Variable $vars