function Export-VaporTemplate {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true)]
        [PSTypeName('AWS.CloudFormation.Template')]
        $TemplateObject,
        [parameter(Mandatory = $false,Position = 1)]
        [ValidateScript({if(!$Force -and (Test-Path $_)){throw "The file '$_' already exists! Use the -Force parameter to overwrite it."}else{$true}})]
        [String]
        $Path,
        [Switch]
        $Force
    )
    Process {
        if ($Path) {
            $TemplateObject | Select-Object AWSTemplateFormatVersion,Description,Metadata,Parameters,Mappings,Conditions,Resources,Outputs | ConvertTo-Json -Depth 10 | Out-File -FilePath $Path
        }
        else {
            $TemplateObject | Select-Object AWSTemplateFormatVersion,Description,Metadata,Parameters,Mappings,Conditions,Resources,Outputs | ConvertTo-Json -Depth 10
        }
    }
}