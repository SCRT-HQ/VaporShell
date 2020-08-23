function New-MDFunctionHelp {
    [CmdletBinding()]
    Param(
        [parameter(Position = 0, ValueFromPipeline, Mandatory)]
        [object]
        $Help
    )
    Process {
        $mdStrings = [System.Text.StringBuilder]::new()
        [void]$mdStrings.AppendLine("# $($Help.Name)")
        [void]$mdStrings.AppendLine("")
        [void]$mdStrings.AppendLine("## SYNOPSIS")
        [void]$mdStrings.AppendLine("")
        [void]$mdStrings.AppendLine("$($Help.Synopsis)")
        [void]$mdStrings.AppendLine("")
        [void]$mdStrings.AppendLine("## SYNTAX")
        [void]$mdStrings.AppendLine("")
        [void]$mdStrings.AppendLine('```powershell')
        [void]$mdStrings.AppendLine("$(($Help.syntax | Out-String).Trim())")
        [void]$mdStrings.AppendLine('```')
        [void]$mdStrings.AppendLine("")
        $desc = if ([string]::IsNullOrWhiteSpace($Help.Description.Text)) {
            $Help.Synopsis
        }
        else {
            $Help.Description.Text
        }
        [void]$mdStrings.AppendLine("## DESCRIPTION")
        [void]$mdStrings.AppendLine("")
        [void]$mdStrings.AppendLine($desc)
        [void]$mdStrings.AppendLine("")
        if ($null -ne $Help.examples) {
            [void]$mdStrings.AppendLine("")
            [void]$mdStrings.AppendLine("## EXAMPLES")
            foreach ($ex in $Help.examples.example) {
                [void]$mdStrings.AppendLine("")
                [void]$mdStrings.AppendLine(($ex.title -replace '\-+\s(EXAMPLE\s\d+)\s\-+','### $1'))
                [void]$mdStrings.AppendLine("")
                [void]$mdStrings.AppendLine('```powershell')
                [void]$mdStrings.AppendLine("$($ex.code)")
                [void]$mdStrings.AppendLine('```')
                [void]$mdStrings.AppendLine("")
                if ($null -ne $ex.remarks) {
                    [void]$mdStrings.AppendLine("$(($ex.remarks | Where-Object {-not [string]::IsNullOrEmpty($_.Text)}).Text)")
                }
            }
        }
        if ($null -ne $Help.parameters) {
            [void]$mdStrings.AppendLine("")
            [void]$mdStrings.AppendLine("## PARAMETERS")
            [void]$mdStrings.AppendLine("")
            foreach ($par in $Help.parameters.parameter) {
                $parString = ($par | out-string) -split '[\r\n]'
                $parStart = $parString.IndexOf(($parString | Where-Object {$_ -match '\-\w+\s\[*\<[\w_\.]+\>\]*'} | Select-Object -First 1))
                $parEnd = $parString.IndexOf(($parString | Where-Object {$_ -match 'Accept wildcard characters\?'} | Select-Object -Last 1))
                $parYamlStart = $parString.IndexOf(($parString | Where-Object {$_ -match 'Required\?\s+(true|false)'} | Select-Object -First 1))
                $parName = $parString[$parStart] -replace '^\-(.*)\s+\<.*\>.*','$1'
                $parType = $parString[$parStart] -replace '^.*\s\<(.*)\>.*','$1'
                [void]$mdStrings.AppendLine("### $($parString[$parStart])")
                [void]$mdStrings.AppendLine("")
                [void]$mdStrings.AppendLine("$($parString[2..($parYamlStart-1)].TrimStart('    ').Trim() -join [System.Environment]::NewLine)")
                [void]$mdStrings.AppendLine('```yaml')
                [void]$mdStrings.AppendLine("Required: $($par.required)")
                [void]$mdStrings.AppendLine("Position: $($par.Position)")
                [void]$mdStrings.AppendLine("Default value: $(if($par.defaultValue){$par.defaultValue}else{'None'})")
                [void]$mdStrings.AppendLine("Accept pipeline input: $($par.pipelineInput)")
                [void]$mdStrings.AppendLine("Accept wildcard characters: $($par.globbing)")
                [void]$mdStrings.AppendLine('```')
                [void]$mdStrings.AppendLine("")
            }
        }
        if (($Help.parameters | Out-String) -match '\<CommonParameters\>') {
            [void]$mdStrings.AppendLine("### CommonParameters")
            [void]$mdStrings.AppendLine("")
            [void]$mdStrings.AppendLine("This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).")
            [void]$mdStrings.AppendLine("")
        }
        if ($Help.inputTypes) {
            [void]$mdStrings.AppendLine("## INPUTS")
            [void]$mdStrings.AppendLine("")
            [void]$mdStrings.AppendLine("$(($Help.inputTypes | Out-String).Trim())")
            [void]$mdStrings.AppendLine("")
        }
        if ($Help.returnValues) {
            [void]$mdStrings.AppendLine("## OUTPUTS")
            [void]$mdStrings.AppendLine("")
            [void]$mdStrings.AppendLine("$(($Help.returnValues | Out-String).Trim())")
            [void]$mdStrings.AppendLine("")
        }
        if ($Help.alertSet) {
            [void]$mdStrings.AppendLine("## NOTES")
            [void]$mdStrings.AppendLine("")
            [void]$mdStrings.AppendLine("$(($Help.alertSet | Out-String).Trim())")
            [void]$mdStrings.AppendLine("")
        }
        if ($Help.relatedLinks) {
            [void]$mdStrings.AppendLine("## RELATED LINKS")
            [void]$mdStrings.AppendLine("")
            [void]$mdStrings.AppendLine("$(($Help.relatedLinks | Out-String).Trim())")
            [void]$mdStrings.AppendLine("")
        }

        $mdStrings.ToString()
    }
}
