function Export-Vaporshell {
    <#
    .SYNOPSIS
        Exports the template object to JSON file.
    
    .DESCRIPTION
        Exports the template object to JSON file.

        Requires the Vaporshell input object to be type 'Vaporshell.Template'
    
    .PARAMETER Vaporshell
        The input object
    
    .PARAMETER Path
        Path to save the resulting JSON file.
    
    .PARAMETER Force
        Forces an overwrite if the Path already exists

    .EXAMPLE
        $Template | Export-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .EXAMPLE
        Export-Vaporshell -VaporshellTemplate $Template -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true)]
        [ValidateScript({
            if($_.Resources) {
                $true
            }
            else {
                throw "Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum."
            }
        })]
        [PSTypeName('Vaporshell.Template')]
        $VaporshellTemplate,
        [parameter(Mandatory = $false,Position = 1)]
        [System.String]
        $Path,
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
        if ($Path) {
            ConvertTo-Json -Depth 50 -InputObject $VaporshellTemplate -Verbose:$false | Out-File -FilePath $Path @ForcePref -Verbose:$false
        }
        else {
            ConvertTo-Json -Depth 50 -InputObject $VaporshellTemplate -Verbose:$false
        }
    }
}