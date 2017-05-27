function Initialize-VaporTemplate {
    <#
    .SYNOPSIS
        The starting point for your template buildout. This should always be the first thing called in your template script.
    
    .DESCRIPTION
        The starting point for your template buildout. This should always be the first thing called in your template script.

        This creates a PSObject, custom typed as 'AWS.CloudFormation.Template'. It builds out the containers for Metadata, Parameters, Mappings, Conditions, Resources and Outputs.
    
    .PARAMETER Description
        The template description. Total byte count for the description has to be greater than 0 but less than 1024.

    .EXAMPLE
        $vaporTemplate = Initialize-VaporTemplate -Description "This is a sample template that builds an S3 bucket"

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({[System.Text.Encoding]::UTF8.GetByteCount($_) -lt 1024 -and [System.Text.Encoding]::UTF8.GetByteCount($_) -gt 0})]
        [String]
        $Description
    )
    New-Object PSObject -Property @{
        "AWSTemplateFormatVersion" = "2010-09-09"
        "Description"              = "$Description"
        "Metadata"                 = @{

        }
        "Parameters"               = @{

        }
        "Mappings"                 = @{

        }
        "Conditions"               = @{

        }
        "Resources"                = @{

        }
        "Outputs"                  = @{

        }
    } | Select-Object AWSTemplateFormatVersion,Description,Metadata,Parameters,Mappings,Conditions,Resources,Outputs | Add-ObjectDetail -TypeName 'AWS.CloudFormation.Template'
}