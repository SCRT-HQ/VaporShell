$main = Get-ChildItem "$($PSScriptRoot)/../../VaporShell/Public"

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
        Get-ChildItem $item.FullName -Recurse | Where-Object {$_.extension -eq ".ps1"} | ForEach-Object {
            $output += [PSCustomObject][ordered]@{
                title = $_.BaseName
                tag = $tag
            }
        }
    }
}

$output | Sort-Object tag,title | Export-Csv -NoTypeInformation "$($PSScriptRoot)/../_data/glossarydata.csv" -Force
