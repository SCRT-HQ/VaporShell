function Convert-TemplateToVaporShellScript {
    [CmdletBinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true,ValueFromPipelineByPropertyName = $true)]
        [ValidateScript( {Test-Path $_})]
        [Alias('FullName')]
        [String[]]
        $Path
    )
    Begin {
        $typeDict = . (Resolve-Path (Join-Path (Join-Path ($script:VaporshellPath) "bin") "TypeToFunctionDict.ps1")).Path
    }
    Process {
        foreach ($tempPath in $Path) {
            $tempFull = Import-Vaporshell -Path $tempPath

            $final = @('#region Initialize VaporShell template object')
            
            $command = '$template = Initialize-Vaporshell'
            if ($tempFull.Description) {
                $command += " -Description `"$($tempFull.Description)`""
            }
            $final += $command
            $final += "#endregion Initialize VaporShell template object"
            $final += ""

            if ($tempFull.Outputs) {
                $commandArray = @()
                $final += "#region Add Outputs to template"
                $final += '$template.AddOutput('
                foreach ($prop in $tempFull.Outputs.PSObject.Properties.Name) {
                    $command = "`t(New-VaporOutput -LogicalId `"$($prop)`""
                    if ($tempFull.Outputs.$prop.Description) {
                        $command += " -Description `"$($tempFull.Outputs.$prop.Description)`""
                    }
                    $command += " -Value $(Convert-ToVSCommand $tempFull.Outputs.$prop.Value)"
                    if ($tempFull.Outputs.$prop.Value -is 'System.Management.Automation.PSCustomObject') {

                    }
                    $commandArray += $command
                }
                $final += $($commandArray -join ",`n")
                $final += ")"
                $final += "#endregion Add Outputs to template"
                $final += ""
            }
            
        }
    }
}