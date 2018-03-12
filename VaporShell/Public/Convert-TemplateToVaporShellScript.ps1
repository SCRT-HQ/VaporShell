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
    Process {
        foreach ($tempPath in $Path) {
            $tempFull = Import-Vaporshell -Path $tempPath

            $final = @('#region Initialize VaporShell template object')
            
            $tempInit = '$template = Initialize-Vaporshell'
            if ($tempFull.Description) {
                $tempInit += " -Description `"$($tempFull.Description)`""
            }
            $final += $tempInit
            $final += "#endregion Initialize VaporShell template object"
            $final += ""

            if ($tempFull.Outputs) {
                $final += "#region Add Outputs to template"
                foreach ($prop in $tempFull.Outputs.PSObject.Properties.Name) {
                    $command = "New-VaporOutput -LogicalId `"$($prop)`""
                    if ($tempFull.Outputs.$prop.Description) {
                        $command += " -Description `"$($tempFull.Outputs.$prop.Description)`""
                    }
                    $command += " -Value "
                    if ($tempFull.Outputs.$prop.Value -is 'System.Management.Automation.PSCustomObject') {

                    }

                    $final += $command
                }
                $final += "#endregion Add Outputs to template"
                $final += ""
            }
        }
    }
}