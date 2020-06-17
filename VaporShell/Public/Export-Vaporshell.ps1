function Export-Vaporshell {
    <#
    .SYNOPSIS
        Exports the template object to JSON file.

    .DESCRIPTION
        Exports the template object to JSON file.

        Requires the Vaporshell input object to be type 'Vaporshell.Template'

    .PARAMETER VaporshellTemplate
        The input template object

    .PARAMETER As
        Specify JSON or YAML for your preferred output. Defaults to JSON.

        **Important**: In order to use YAML, you must have cfn-flip installed: https://github.com/awslabs/aws-cfn-template-flip

    .PARAMETER Path
        Path to save the resulting JSON file.

    .PARAMETER ValidateTemplate
        Validates the template using the AWS .NET SDK

    .PARAMETER Force
        Forces an overwrite if the Path already exists

    .EXAMPLE
        $Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
        # Add items to the $Template object here
        $Template | Export-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .EXAMPLE
        $Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
        # Add items to the $Template object here
        Export-Vaporshell -VaporshellTemplate $Template -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0,ValueFromPipeline)]
        [VSTemplate]
        $VaporshellTemplate,
        [parameter(Position = 1)]
        [ValidateSet("JSON","YAML")]
        [string]
        $As = "JSON",
        [parameter(Position = 2)]
        [string]
        $Path,
        [parameter()]
        [switch]
        $ValidateTemplate,
        [parameter()]
        [switch]
        $Force
    )
    Begin {
        if (-not $PSBoundParameters.ContainsKey('As')) {
            $As = if (-not $PSBoundParameters.ContainsKey('Path')) {
                'JSON'
            }
            else {
                switch -RegEx ($Path) {
                    '\.(yml|yaml)$' {
                        'YAML'
                    }
                    default {
                        'JSON'
                    }
                }
            }
        }
    }
    Process {
        Write-Verbose "Converting template object to $As"
        $final = $VaporshellTemplate.Export($true, $As)
    }
    End {
        if ($ValidateTemplate) {
            Get-TemplateValidation -TemplateBody ($Final -join [System.Environment]::NewLine)
        }
        if ($Path) {
            Write-Verbose "Exporting $As template to: $Path"
            $VaporshellTemplate.Export($Path, $As, $Force)
        }
        else {
            return ($Final -join [System.Environment]::NewLine)
        }
    }
}
