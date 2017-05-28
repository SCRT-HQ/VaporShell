function Initialize-VaporTemplate {
    <#
    .SYNOPSIS
        The starting point for your template buildout. This should always be the first thing called in your template script.
    
    .DESCRIPTION
        The starting point for your template buildout. This should always be the first thing called in your template script.

        This creates a PSObject, custom typed as 'Vaporshell.Template'. It builds out the containers for Metadata, Parameters, Mappings, Conditions, Resources and Outputs.
    
    .PARAMETER Description
        The template description. Total byte count for the description has to be greater than 0 but less than 1024.

    .EXAMPLE
        $vaporTemplate = Initialize-VaporTemplate -Description "This is a sample template that builds an S3 bucket"

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Template')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {[System.Text.Encoding]::UTF8.GetByteCount($_) -lt 1024 -and [System.Text.Encoding]::UTF8.GetByteCount($_) -gt 0})]
        [System.String]
        $Description
    )
    $tempObj = [PSCustomObject][Ordered]@{
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
    }
    $addMetadata = {
        Process {
            foreach ($obj in $args) {
                $this.Metadata.Add($($obj.Id),$($obj | Select-Object * -ExcludeProperty Id))
            }
        }
    }
    $addParameter = {
        Process {
            foreach ($obj in $args) {
                $this.Parameters.Add($($obj.Id),$($obj | Select-Object * -ExcludeProperty Id))
            }
        }
    }
    $addMapping = {
        Process {
            foreach ($obj in $args) {
                $this.Mappings.Add($($obj.Id),$($obj | Select-Object * -ExcludeProperty Id))
            }
        }
    }
    $addCondition = {
        Process {
            foreach ($obj in $args) {
                $this.Conditions.Add($($obj.Id),$($obj | Select-Object * -ExcludeProperty Id))
            }
        }
    }
    $addResource = {
        Process {
            foreach ($obj in $args) {
                $this.Resources.Add($($obj.Id),$($obj | Select-Object * -ExcludeProperty Id))
            }
        }
    }
    $addOutput = {
        Process {
            foreach ($obj in $args) {
                $this.Outputs.Add($($obj.Id),$($obj | Select-Object * -ExcludeProperty Id))
            }
        }
    }
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "AddMetadata"
        Value       = $addMetadata
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "AddParameter"
        Value       = $addParameter
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "AddMapping"
        Value       = $addMapping
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "AddCondition"
        Value       = $addCondition
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "AddResource"
        Value       = $addResource
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "AddOutput"
        Value       = $addOutput
    }
    Add-Member @memberParam
    $tempObj | Add-ObjectDetail -TypeName 'Vaporshell.Template'
}