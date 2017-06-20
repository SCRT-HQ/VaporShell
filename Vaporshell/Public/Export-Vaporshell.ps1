function Export-Vaporshell {
    <#
    .SYNOPSIS
        Exports the template object to JSON file.
    
    .DESCRIPTION
        Exports the template object to JSON file.

        Requires the Vaporshell input object to be type 'Vaporshell.Template'
    
    .PARAMETER VaporshellTemplate
        The input template object
    
    .PARAMETER Path
        Path to save the resulting JSON file.
    
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
                    throw "Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum."
                }
            })]
        [PSTypeName('Vaporshell.Template')]
        $VaporshellTemplate,
        [parameter(Mandatory = $true,Position = 1)]
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
        Write-Verbose "Exporting template to: $Path"
        ConvertTo-Json -Depth 100 -InputObject $VaporshellTemplate -Verbose:$false | Set-Content -Path $Path @ForcePref -Verbose:$false
    }
    End {
        if ($ValidateTemplate) {
            if (Get-Command aws) {
                Write-Verbose "Validating template"
                $Path = (Resolve-Path $Path).Path
                $fileUrl = "$($Path.Replace("\","/"))"
                if ($val = aws cloudformation validate-template --template-body fileb://$fileUrl) {
                    Write-Host -ForegroundColor Green "The template was validated successfully!`n"
                    return $val
                }
            }
            else {
                Write-Warning "AWS CLI tools not found in PATH! Skipping validation to prevent failure."
            }
        }
    }
}