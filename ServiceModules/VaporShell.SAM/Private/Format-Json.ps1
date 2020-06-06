function Format-Json {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true)]
        [String]
        $Json
    )
    Begin {
        $cleaner = {
            param([String]$Line)
            Process{
                [Regex]::Replace(
                    $Line,
                    "\\u(?<Value>[a-zA-Z0-9]{4})",
                    {
                        param($m)([char]([int]::Parse(
                            $m.Groups['Value'].Value,
                            [System.Globalization.NumberStyles]::HexNumber
                        ))).ToString()
                    }
                )
            }
        }
    }
    Process {
        if ($PSVersionTable.PSVersion.Major -lt 6) {
            try {
                $indent = 0;
                $res = $Json -split '\n' | ForEach-Object {
                    if ($_ -match '[\}\]]') {
                        # This line contains  ] or }, decrement the indentation level
                        $indent--
                    }
                    $line = (' ' * $indent * 2) + $_.TrimStart().Replace(':  ', ': ')
                    if ($_ -match '[\{\[]') {
                        # This line contains [ or {, increment the indentation level
                        $indent++
                    }
                    $cleaner.Invoke($line)
                }
                $res -join "`n"
            }
            catch {
                ($Json -split '\n' | ForEach-Object {$cleaner.Invoke($_)}) -join "`n"
            }
        }
        else {
            ($Json -split '\n' | ForEach-Object {$cleaner.Invoke($_)}) -join "`n"
        }
    }
}
