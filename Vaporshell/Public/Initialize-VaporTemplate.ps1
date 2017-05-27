function Initialize-VaporTemplate {
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