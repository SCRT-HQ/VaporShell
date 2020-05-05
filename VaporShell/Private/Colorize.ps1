function Colorize {
    Param
    (
        [parameter(Mandatory = $false, Position = 0, ValueFromPipeline = $true)]
        [String[]]
        $Strings
    )
    Process {
        foreach ($row in $Strings) {
            $hostParams = @{
                Object   = $row
                NoNewLine = $true
            }
            switch -Regex -CaseSensitive ($row) {
                "(STACK NAME|REFRESH)" {
                    $hostParams['ForegroundColor'] = 'Black'
                    $hostParams['BackgroundColor'] = 'Cyan'
                }
                "_FAILED" {
                    if ($row -match 'AWS::CloudFormation::Stack') {
                        $hostParams['ForegroundColor'] = 'White'
                        $hostParams['BackgroundColor'] = 'DarkRed'
                    }
                    else {
                        $hostParams['ForegroundColor'] = 'Black'
                        $hostParams['BackgroundColor'] = 'Red'
                    }
                }
                "REVIEW_IN_PROGRESS" {
                    $hostParams['ForegroundColor'] = 'Black'
                    $hostParams['BackgroundColor'] = 'Red'
                }
                "ROLLBACK_IN_PROGRESS" {
                    $hostParams['ForegroundColor'] = 'Cyan'
                }
                "ROLLBACK_COMPLETE" {
                    $hostParams['ForegroundColor'] = 'Black'
                    $hostParams['BackgroundColor'] = 'Cyan'
                }
                "(UPDATE_IN_PROGRESS|CREATE_IN_PROGRESS|IMPORT_IN_PROGRESS)" {
                    if ($row -match 'AWS::CloudFormation::Stack') {
                        $hostParams['ForegroundColor'] = 'White'
                        $hostParams['BackgroundColor'] = 'DarkMagenta'
                    }
                    else {
                        $hostParams['ForegroundColor'] = 'Green'
                    }
                }
                "(UPDATE_COMPLETE|CREATE_COMPLETE|IMPORT_COMPLETE)" {
                    if ($row -match 'AWS::CloudFormation::Stack') {
                        $hostParams['ForegroundColor'] = 'White'
                        $hostParams['BackgroundColor'] = 'DarkGreen'
                    }
                    else {
                        $hostParams['ForegroundColor'] = 'Black'
                        $hostParams['BackgroundColor'] = 'Green'
                    }
                }
                "DELETE_IN_PROGRESS" {
                    $hostParams['ForegroundColor'] = 'Yellow'
                }
                "DELETE_COMPLETE" {
                    $hostParams['ForegroundColor'] = 'Black'
                    $hostParams['BackgroundColor'] = 'Yellow'
                }
                "DELETE_SKIPPED" {
                    $hostParams['ForegroundColor'] = 'Black'
                    $hostParams['BackgroundColor'] = 'Magenta'
                }
            }
            Write-Host @hostParams
            Write-Host ''
        }
    }
}
