#. /tmp/library-scripts/bootstrap.ps1

$buildOutputPath = '/workspaces/VaporShell/BuildOutput'

if (($env:PSModulePath -split [IO.Path]::PathSeparator) -notcontains $buildOutputPath) {
    $env:PSModulePath = ($buildOutputPath,$env:PSModulePath) -join [IO.Path]::PathSeparator
}

function Get-ScrtHqDevContainerHelp {
    [CmdletBinding()]
    Param()
    Process {
        Write-Host -ForegroundColor Cyan 'Welcome to your Secret Headquarters!'
        Write-Host "`nThis is a containerized development environment containing tools to "
        Write-Host "build and test the module with build shortcuts powered by PSProfile."
        Write-Host -ForegroundColor Magenta "`nHow to use this environment:`n"
        Write-Host '* To build the module, run ' -NoNewLine
        Write-Host -ForegroundColor Green 'Start-BuildScript' -NoNewLine
        Write-Host ' or ' -NoNewline
        Write-Host -ForegroundColor Green 'bld' -NoNewline
        Write-Host ' (alias).'
        Write-Host '* To test the module, append ' -NoNewLine
        Write-Host -ForegroundColor Green '-Task Test' -NoNewLine
        Write-Host ' to the command, e.g. ' -NoNewLine
        Write-Host -ForegroundColor Green "bld -Task Test`n"
        Write-Host 'To repeat this information, run ' -NoNewLine
        Write-Host -ForegroundColor Yellow 'Get-ScrtHqDevContainerHelp'
        Write-Host ''
    }
}

Get-ScrtHqDevContainerHelp

Import-Module PSProfile

Add-PSProfileCommandAlias -Alias code -Command Open-Code -Force -Save

# $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
# $GitPromptSettings.DefaultPromptSuffix.ForegroundColor = 0x808080
# $GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500
# $GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n[$([DateTime]::now.ToString("MM-dd HH:mm:ss.ffff"))] [#$((Get-History -Count 1).id + 1)]'
# $GitPromptSettings.DefaultPromptSuffix = '$(">" * ($nestedPromptLevel + 1)) '

function global:prompt {
    $origDollarQuestion = $global:?
    $origLastExitCode = $global:LASTEXITCODE

    if ($null -eq $global:promptCounter) {
        $global:promptCounter = 0
    }
    $global:promptCounter++
    $GitPromptSettings.EnableFileStatus = ($global:promptCounter % 5) -eq 0


    if ($origDollarQuestion -eq $true) {
        $GitPromptSettings.DefaultPromptPrefix.Text = '[#$($MyInvocation.HistoryId) $("PS {0}" -f (Get-PSVersion))] [$("{0}" -f ((lsb_release -d) -replace "^Description:\s+"))] '
        $GitPromptSettings.DefaultPromptPrefix.ForegroundColor = "LightGreen"
    }
    else {
        $GitPromptSettings.DefaultPromptPrefix.Text = "[x$($origLastExitCode) `$(`"PS {0}`" -f (Get-PSVersion))] [`$(`"{0}`" -f ((lsb_release -d) -replace `"^Description:\s+`"))] "
        $GitPromptSettings.DefaultPromptPrefix.ForegroundColor = "Salmon"
    }
    $GitPromptSettings.DefaultPromptPath.ForegroundColor = 'Cyan'
    $GitPromptSettings.DefaultPromptPath.Text = '[$(Get-PathAlias)$("+" * ((Get-Location -Stack).Count))]'
    $GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n[$(Get-LastCommandDuration) @ $([DateTime]::now.ToString("HH:mm:ss.ffff"))]`n'
    if ($env:AWS_PROFILE) {
        $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 'Yellow'
        $awsIcon = if ($global:PSProfile.Settings.ContainsKey("FontType")) {
            $global:PSProfile.Settings.PromptCharacters.AWS[$global:PSProfile.Settings.FontType]
        }
        else {
            "AWS:"
        }
        if ([String]::IsNullOrEmpty($awsIcon)) {
            $awsIcon = "AWS:"
        }
        $str = "$($awsIcon) $($env:AWS_PROFILE)$(if($env:AWS_DEFAULT_REGION){" @ $env:AWS_DEFAULT_REGION"})"
        $GitPromptSettings.DefaultPromptBeforeSuffix.Text += '[{0}]`n' -f $str
    }
    else {
        $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 'White'
    }
    $GitPromptSettings.DefaultPromptBeforeSuffix.Text += '<###'

    $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
    $GitPromptSettings.DefaultPromptSuffix.ForegroundColor = 0x808080
    $GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500

    $global:LASTEXITCODE = $origLastExitCode
    & $GitPromptScriptBlock
}



if ($null -ne (Get-Module PSReadline)) {
    $setPSReadLineOptionSplat = @{
        HistorySearchCursorMovesToEnd = $true
        HistoryNoDuplicates           = $true
        ShowToolTips                  = $true
        HistorySearchCaseSensitive    = $false
        HistorySavePath               = '/workspaces/VaporShell/.devcontainer/IgnoredCommandHistory.txt'
        PredictionSource              = 'History'
    }
    Set-PSReadLineOption @setPSReadLineOptionSplat
    Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
    Set-PSReadLineKeyHandler -Key Escape -Function RevertLine
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadLineKeyHandler -Chord 'Ctrl+W' -Function BackwardKillWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+LeftArrow' -Function BackwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+Shift+LeftArrow' -Function SelectBackwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+RightArrow' -Function ForwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+Shift+RightArrow' -Function SelectForwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+D'  -Function KillWord
    Set-PSReadLineKeyHandler -Key Alt+w `
        -BriefDescription SaveInHistory `
        -LongDescription "Save current line in history but do not execute" ` `
        -ScriptBlock {
        param($key, $arg)
        $line = $null
        $cursor = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)
        [Microsoft.PowerShell.PSConsoleReadLine]::AddToHistory($line)
        [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    }
    # F1 for help on the command line - naturally
    Set-PSReadLineKeyHandler -Key F1 `
        -BriefDescription CommandHelp `
        -LongDescription "Open the help window for the current command" `
        -ScriptBlock {
        param($key, $arg)
        $ast = $null
        $tokens = $null
        $errors = $null
        $cursor = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$ast, [ref]$tokens, [ref]$errors, [ref]$cursor)
        $commandAst = $ast.FindAll( {
                $node = $args[0]
                $node -is [System.Management.Automation.Language.CommandAst] -and
                $node.Extent.StartOffset -le $cursor -and
                $node.Extent.EndOffset -ge $cursor
            }, $true) | Select-Object -Last 1
        if ($commandAst -ne $null) {
            $commandName = $commandAst.GetCommandName()
            if ($commandName -ne $null) {
                $command = $ExecutionContext.InvokeCommand.GetCommand($commandName, 'All')
                if ($command -is [System.Management.Automation.AliasInfo]) {
                    $commandName = $command.ResolvedCommandName
                }
                if ($commandName -ne $null) {
                    Get-Help $commandName -ShowWindow
                }
            }
        }
    }
}
