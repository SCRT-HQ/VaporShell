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
        Runs `aws cloudformation validate-template` against the resulting file.

        **Important**: In order to use this switch, you must have AWS CLI Tools installed and configured: http://docs.aws.amazon.com/cli/latest/userguide/installing.html
    
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
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true)]
        [ValidateScript( {
                if ($_.Resources) {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum."))
                }
            })]
        [PSTypeName('Vaporshell.Template')]
        $VaporshellTemplate,
        [parameter(Mandatory = $false,Position = 1)]
        [ValidateSet("JSON","YAML")]
        [System.String]
        $As = "JSON",
        [parameter(Mandatory = $false,Position = 2)]
        [System.String]
        $Path,
        [parameter(Mandatory = $false)]
        [Switch]
        $ValidateTemplate,
        [parameter(Mandatory = $false)]
        [Switch]
        $Force
    )
    Begin {
        $ForcePref = @{}
        if ($Force) {
            $ForcePref.add("Force",$True)
        }
    }
    Process {
        Write-Verbose "Converting template object to JSON"
        $JSON = ConvertTo-Json -Depth 100 -InputObject $VaporshellTemplate -Verbose:$false | Format-Json
    }
    End {
        if ($As -eq "YAML") {
            if (Get-Command cfn-flip -ErrorAction SilentlyContinue) {
                Write-Verbose "Converting JSON to YAML with cfn-flip"
                $Final = $JSON | cfn-flip
            }
            else {
                Write-Warning "cfn-flip not found in PATH! Skipping conversion to YAML to prevent failure."
                $Final = $JSON
            }
        }
        else {
            $Final = $JSON
        }
        if ($ValidateTemplate) {
            Get-TemplateValidation -TemplateBody ($Final -join "`n")
        }
        if ($Path) {
            Write-Verbose "Exporting template to: $Path"
            $Final | Set-Content -Path $Path @ForcePref -Verbose:$false
        }
        else {
            return ($Final -join "`n")
        }
    }
}