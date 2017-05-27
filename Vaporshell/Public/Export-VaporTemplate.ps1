function Export-VaporTemplate {
    <#
    .SYNOPSIS
        Exports the template object to JSON file.
    
    .DESCRIPTION
        Exports the template object to JSON file.

        Required the TemplateObject to be type 'AWS.CloudFormation.Template'
    
    .PARAMETER TemplateObject
        The input object
    
    .PARAMETER Path
        Path to save the resulting JSON file.
    
    .PARAMETER Force
        Forces an overwrite if the Path already exists

    .EXAMPLE
        $vaporTemplate | Export-VaporTemplate -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .EXAMPLE
        Export-VaporTemplate -TemplateObject $vaporTemplate -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .FUNCTIONALITY
        Vaporshell
    #>
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
            $TemplateObject | Select-Object AWSTemplateFormatVersion,Description,Metadata,Parameters,Mappings,Conditions,Resources,Outputs | ConvertTo-Json -Depth 100 | Out-File -FilePath $Path
        }
        else {
            $TemplateObject | Select-Object AWSTemplateFormatVersion,Description,Metadata,Parameters,Mappings,Conditions,Resources,Outputs | ConvertTo-Json -Depth 100
        }
    }
}