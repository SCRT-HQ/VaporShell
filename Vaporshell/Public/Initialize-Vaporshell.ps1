function Initialize-Vaporshell {
    <#
    .SYNOPSIS
        The starting point for your template buildout. This should always be the first thing called in your template script.
    
    .DESCRIPTION
        The starting point for your template buildout. This should always be the first thing called in your template script.

        This creates a PSObject, custom typed as 'Vaporshell.Template'. It builds out the containers for Metadata, Parameters, Mappings, Conditions, Resources and Outputs.
    
    .PARAMETER Description
        The template description. Total byte count for the description has to be greater than 0 but less than 1024.

    .EXAMPLE
        $Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Template')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [ValidateSet("2010-09-09")]
        [System.String]
        $FormatVersion = "2010-09-09",
        [parameter(Mandatory = $false,Position = 1)]
        [ValidateScript( {[System.Text.Encoding]::UTF8.GetByteCount($_) -lt 1024 -and [System.Text.Encoding]::UTF8.GetByteCount($_) -gt 0})]
        [System.String]
        $Description
    )
    $tempObj = [PSCustomObject][Ordered]@{
        "AWSTemplateFormatVersion" = "$FormatVersion"
    }
    if ($Description) {
        $tempObj | Add-Member -MemberType NoteProperty -Name "Description" -Value "$Description"
    }
    $addMetadata = {
        Process {
            foreach ($obj in $args) {
                if (!($this.Metadata)) {
                    Write-Warning "The Metadata property was not found on the Vaporshell template. Adding the property to the template now."
                    $this | Add-Member -MemberType NoteProperty -Name "Metadata" -Value @{}
                }
                $this.Metadata.Add($($obj.LogicalID),$($obj | Select-Object * -ExcludeProperty LogicalID))
            }
        }
    }
    $addParameter = {
        Process {
            foreach ($obj in $args) {
                if (!($this.Parameters)) {
                    Write-Warning "The Parameters property was not found on the Vaporshell template. Adding the property to the template now."
                    $this | Add-Member -MemberType NoteProperty -Name "Parameters" -Value @{}
                }
                $this.Parameters.Add($($obj.LogicalID),$($obj | Select-Object * -ExcludeProperty LogicalID))
            }
        }
    }
    $addMapping = {
        Process {
            foreach ($obj in $args) {
                if (!($this.Mappings)) {
                    Write-Warning "The Mappings property was not found on the Vaporshell template. Adding the property to the template now."
                    $this | Add-Member -MemberType NoteProperty -Name "Mappings" -Value @{}
                }
                $this.Mappings.Add($($obj.LogicalID),$($obj | Select-Object * -ExcludeProperty LogicalID))
            }
        }
    }
    $addCondition = {
        Process {
            foreach ($obj in $args) {
                if (!($this.Conditions)) {
                    Write-Warning "The Conditions property was not found on the Vaporshell template. Adding the property to the template now."
                    $this | Add-Member -MemberType NoteProperty -Name "Conditions" -Value @{}
                }
                $this.Conditions.Add($($obj.LogicalID),$($obj | Select-Object * -ExcludeProperty LogicalID))
            }
        }
    }
    $addResource = {
        Process {
            foreach ($obj in $args) {
                if (!($this.Resources)) {
                    Write-Warning "The Resources property was not found on the Vaporshell template. Adding the property to the template now."
                    $this | Add-Member -MemberType NoteProperty -Name "Resources" -Value @{}
                }
                $this.Resources.Add($($obj.LogicalID),$($obj | Select-Object * -ExcludeProperty LogicalID))
            }
        }
    }
    $addOutput = {
        Process {
            foreach ($obj in $args) {
                if (!($this.Outputs)) {
                    Write-Warning "The Outputs property was not found on the Vaporshell template. Adding the property to the template now."
                    $this | Add-Member -MemberType NoteProperty -Name "Outputs" -Value @{}
                }
                $this.Outputs.Add($($obj.LogicalID),$($obj.Data))
            }
        }
    }
    $addTransform = {
        Process {
            foreach ($obj in $args) {
                if (!($this.Transform)) {
                    $this | Add-Member -MemberType NoteProperty -Name "Transform" -Value $($obj.Data)
                }
                else {
                    throw "There is already a Transform property on this object!"
                }
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
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "AddTransform"
        Value       = $addTransform
    }
    Add-Member @memberParam
    $remMetadata = {
        Process {
            foreach ($LogicalID in $args) {
                $this.Metadata.Remove($LogicalID)
                if ($template.Metadata.Keys.Count -eq 0) {
                    Write-Warning "All objects in the Metadata property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove('Metadata')
                }
            }
        }
    }
    $remParameter = {
        Process {
            foreach ($LogicalID in $args) {
                $this.Parameters.Remove($LogicalID)
                if ($template.Parameters.Keys.Count -eq 0) {
                    Write-Warning "All objects in the Parameters property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove('Parameters')
                }
            }
        }
    }
    $remMapping = {
        Process {
            foreach ($LogicalID in $args) {
                $this.Mappings.Remove($LogicalID)
                if ($template.Mappings.Keys.Count -eq 0) {
                    Write-Warning "All objects in the Mappings property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove('Mappings')
                }
            }
        }
    }
    $remCondition = {
        Process {
            foreach ($LogicalID in $args) {
                $this.Conditions.Remove($LogicalID)
                if ($template.Conditions.Keys.Count -eq 0) {
                    Write-Warning "All objects in the Conditions property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove('Conditions')
                }
            }
        }
    }
    $remResource = {
        Process {
            foreach ($LogicalID in $args) {
                $this.Resources.Remove($LogicalID)
                if ($template.Resources.Keys.Count -eq 0) {
                    Write-Warning "All objects in the Resources property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove('Resources')
                }
            }
        }
    }
    $remOutput = {
        Process {
            foreach ($LogicalID in $args) {
                $this.Outputs.Remove($LogicalID)
                if ($template.Outputs.Keys.Count -eq 0) {
                    Write-Warning "All objects in the Outputs property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove('Outputs')
                }
            }
        }
    }
    $remTransform = {
        $this.PSObject.Properties.Remove('Transform')
    }
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "RemoveMetadata"
        Value       = $remMetadata
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "RemoveParameter"
        Value       = $remParameter
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "RemoveMapping"
        Value       = $remMapping
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "RemoveCondition"
        Value       = $remCondition
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "RemoveResource"
        Value       = $remResource
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "RemoveOutput"
        Value       = $remOutput
    }
    Add-Member @memberParam
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "RemoveTransform"
        Value       = $remTransform
    }
    Add-Member @memberParam
    $tempObj | Add-ObjectDetail -TypeName 'Vaporshell.Template'
}