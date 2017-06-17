$main = Get-ChildItem "C:\GDrive\PSModules\Vaporshell\Vaporshell\Public"

$output = @()

foreach ($item in $main) {
    if ($item.extension -eq ".ps1") {
        $output += [PSCustomObject][ordered]@{
            title = $item.BaseName
            tag = "core-functions"
        }
    }
    else {
        $tag = $(($item.Name -replace " ","-").ToLower())
        Get-ChildItem $item.FullName -Recurse | ForEach-Object {
            $output += [PSCustomObject][ordered]@{
                title = $_.BaseName
                tag = $tag
            }
        }
    }
}

$output | Export-Csv -NoTypeInformation C:\GDrive\PSModules\Vaporshell.io\_data\glossarydata.csv -Force