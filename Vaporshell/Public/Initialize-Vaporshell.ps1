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
            $ObjName = "Metadata"
            $allowedTypes = "Vaporshell.Transform","Vaporshell.Metadata"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ($this.PSObject.Properties.Name -notcontains $ObjName) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Properties)
                }
                else {
                    throw "You must use one of the following object types with this parameter: $($allowedTypes -join ", ")"
                }
            }
        }
    }
    $addParameter = {
        Process {
            $ObjName = "Parameters"
            $allowedTypes = "Vaporshell.Parameter"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ($this.PSObject.Properties.Name -notcontains $ObjName) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Properties)
                }
                else {
                    throw "You must use one of the following object types with this parameter: $($allowedTypes -join ", ")"
                }
            }
        }
    }
    $addMapping = {
        Process {
            $ObjName = "Mappings"
            $allowedTypes = "Vaporshell.Transform","Vaporshell.Mapping"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ($this.PSObject.Properties.Name -notcontains $ObjName) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Properties)
                }
                else {
                    throw "You must use one of the following object types with this parameter: $($allowedTypes -join ", ")"
                }
            }
        }
    }
    $addCondition = {
        Process {
            $ObjName = "Conditions"
            $allowedTypes = "Vaporshell.Transform","Vaporshell.Condition"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ($this.PSObject.Properties.Name -notcontains $ObjName) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Properties)
                }
                else {
                    throw "You must use one of the following object types with this parameter: $($allowedTypes -join ", ")"
                }
            }
        }
    }
    $addResource = {
        Process {
            $ObjName = "Resources"
            $allowedTypes = "Vaporshell.Transform","Vaporshell.Resource"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ($this.PSObject.Properties.Name -notcontains $ObjName) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Properties)
                }
                else {
                    throw "You must use one of the following object types with this parameter: $($allowedTypes -join ", ")"
                }
            }
        }
    }
    $addOutput = {
        Process {
            $ObjName = "Outputs"
            $allowedTypes = "Vaporshell.Transform","Vaporshell.Output"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ($this.PSObject.Properties.Name -notcontains $ObjName) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Properties)
                }
                else {
                    throw "You must use one of the following object types with this parameter: $($allowedTypes -join ", ")"
                }
            }
        }
    }
    $addTransform = {
        Process {
            $ObjName = "Transform"
            $allowedTypes = "Vaporshell.Transform.Include"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ($this.PSObject.Properties.Name -notcontains $ObjName) {
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value $($obj.Properties)
                    }
                    else {
                        throw "There is already a $ObjName property on this object!"
                    }
                }
                else {
                    throw "You must use one of the following object types with this parameter: $($allowedTypes -join ", ")"
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
            $ObjName = "Metadata"
            foreach ($LogicalID in $args) {
                $this.$ObjName.PSObject.Properties.Remove($LogicalID)
                if ([string]::IsNullOrWhiteSpace($($this.$ObjName.PSObject.Properties | Out-String))) {
                    Write-Verbose "All objects in the $ObjName property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove($ObjName)
                }
            }
        }
    }
    $remParameter = {
        Process {
            $ObjName = "Parameters"
            foreach ($LogicalID in $args) {
                $this.$ObjName.PSObject.Properties.Remove($LogicalID)
                if ([string]::IsNullOrWhiteSpace($($this.$ObjName.PSObject.Properties | Out-String))) {
                    Write-Verbose "All objects in the $ObjName property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove($ObjName)
                }
            }
        }
    }
    $remMapping = {
        Process {
            $ObjName = "Mappings"
            foreach ($LogicalID in $args) {
                $this.$ObjName.PSObject.Properties.Remove($LogicalID)
                if ([string]::IsNullOrWhiteSpace($($this.$ObjName.PSObject.Properties | Out-String))) {
                    Write-Verbose "All objects in the $ObjName property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove($ObjName)
                }
            }
        }
    }
    $remCondition = {
        Process {
            $ObjName = "Conditions"
            foreach ($LogicalID in $args) {
                $this.$ObjName.PSObject.Properties.Remove($LogicalID)
                if ([string]::IsNullOrWhiteSpace($($this.$ObjName.PSObject.Properties | Out-String))) {
                    Write-Verbose "All objects in the $ObjName property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove($ObjName)
                }
            }
        }
    }
    $remResource = {
        Process {
            $ObjName = "Resources"
            foreach ($LogicalID in $args) {
                $this.$ObjName.PSObject.Properties.Remove($LogicalID)
                if ([string]::IsNullOrWhiteSpace($($this.$ObjName.PSObject.Properties | Out-String))) {
                    Write-Verbose "All objects in the $ObjName property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove($ObjName)
                }
            }
        }
    }
    $remOutput = {
        Process {
            $ObjName = "Outputs"
            foreach ($LogicalID in $args) {
                $this.$ObjName.PSObject.Properties.Remove($LogicalID)
                if ([string]::IsNullOrWhiteSpace($($this.$ObjName.PSObject.Properties | Out-String))) {
                    Write-Verbose "All objects in the $ObjName property have been removed. Removing the property from the template as well."
                    $this.PSObject.Properties.Remove($ObjName)
                }
            }
        }
    }
    $remTransform = {
        $ObjName = "Transform"
        if ($this.$ObjName) {
            $this.PSObject.Properties.Remove($ObjName)
        }
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