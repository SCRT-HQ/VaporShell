function Get-CFNPoshHelp {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [String]$Link,
        [Parameter(Mandatory = $false, ValueFromPipelineByPropertyName = $true)]
        [String[]]$Parameters,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [String]$FunctionName,
        [String]$ResourceName,
        [String]$DocRepoRoot = "$PSScriptRoot\aws-cloudformation-user-guide" # aws docs repo default name
    )
    Write-Verbose "Checking help: $Link"
    $DocPath = "$DocRepoRoot/doc_source/$($Link.split('/')[-1] -replace ".html",".md")"
    if (Test-Path $DocPath) {
        $HelpDocs = Get-Content $DocPath | Where-Object { $_ }
        # Create Description from everything before Syntax section
        $NotesPosition = 2
        foreach ($Help in $HelpDocs[2..($HelpDocs.count - 1)]) {
            if ($Help -like "## Syntax*") {
                break
            }
            else {
                $NotesPosition++
            }
        }
        $Description = @()
        foreach ($Help in $HelpDocs[1..($NotesPosition - 1)]) {
            $Description += ($Help.Trim() -replace '`', '' -replace '\\', '' -replace '[[]', '' -replace '\)', '').Replace('](', ': ')
        }
        $NotesEnd = $NotesPosition
        foreach ($Help in $HelpDocs[($NotesPosition + 1)..($HelpDocs.count - 1)]) {
            if ($Help -like "## *") {
                break
            }
            else {
                $NotesEnd++
            }
        }
        $ParamHelp = @()
        if ($Parameters) {
            foreach ($Parameter in $Parameters) {
                $ParameterDescription = @()
                $ParameterStart = $NotesEnd
                $ParameterDescription = @()
                foreach ($Help in $HelpDocs[($NotesEnd + 1)..($HelpDocs.count - 1)]) {
                    Write-Verbose "Checking Index $ParameterStart"
                    Write-Verbose "$($Help -replace '``','')"
                    if (($Help -replace '`', '') -like "$Parameter  <a*") {
                        Write-Verbose "$Help"
                        Write-Verbose "Position: $Found"
                        break
                    }
                    $ParameterStart++
                }
                Write-Verbose "$Parameter Index Start Found: $ParameterStart"
                foreach ($Help in $HelpDocs[($ParameterStart + 2)..($HelpDocs.count - 1)]) {
                    if ($Help -like "`*Required`*: *") {
                        break
                    }
                    $ParameterDescription += ($Help.Trim() -replace '`', '' -replace '\\', '' -replace '[[]', '' -replace '\)', '').Replace('](', ': ').Replace('(', '')
                }
                Write-Verbose "$ParameterDescription"
                $ParamHelp += [PSCustomObject]@{
                    Name        = $Parameter
                    Description = $ParameterDescription -join "`n"
                }
            }
        }
        $Links = @()
        $Links += "$Link"
        $DocHash = [ordered]@{
            'FunctionName' = $FunctionName
            'Links'        = $Links
            'Synopsis'     = $Description[0]
            'Description'  = $Description -join "`n"
        }
        if ($ParamHelp.Count) {
            $DocHash['Parameters'] = $ParamHelp
        }
        [PSCustomObject]$DocHash
    }
    else {
        Write-Warning "[$ResourceName] No documentation found in user-guide repository matching parsed link!`n     Parsed link: $($Link)`n     Expected: $($DocPath.Replace("$PSScriptRoot\",''))"
    }
}
