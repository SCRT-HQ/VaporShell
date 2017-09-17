function Import-Vaporshell {
    <#
    .SYNOPSIS
        Allows you to import an existing CloudFormation template as a starting point.
    
    .DESCRIPTION
        Allows you to import an existing CloudFormation template as a starting point.
    
    .PARAMETER Path
        The path to the existing template.

    .EXAMPLE
        $Template = Import-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json"

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Template')]
    [cmdletbinding(DefaultParameterSetName = "Path")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "Path")]
        [Alias("FullName")]
        [ValidateScript( {Test-Path $_})]
        [String]
        $Path,
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true,ParameterSetName = "TemplateBody")]
        [String]
        $TemplateBody,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "RawUrl")]
        [String]
        $RawUrl
    )
    if ($PSCmdlet.ParameterSetName -eq "Path") {
        $TemplateBody = [System.IO.File]::ReadAllText((Resolve-Path $Path))
    }
    elseif ($PSCmdlet.ParameterSetName -eq "RawUrl") {
        $TemplateBody = (Invoke-WebRequest -Uri $RawUrl).Content
    }
    if ($TemplateBody -match "Resources:") {
        if (Get-Command cfn-flip -ErrorAction SilentlyContinue) {
            $TemplateBody = ($TemplateBody | cfn-flip)
        }
        else {
            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Template appears to be YAML but cfn-flip is not found in PATH. Unable to convert to JSON to import into Powershell. Please install cfn-flip then restart this console."))
        }
    }
    $tempObj = ConvertFrom-Json -InputObject $TemplateBody -Verbose:$false
    $toString = {
        Export-Vaporshell -VaporshellTemplate $this -As JSON -Verbose:$false -Force
    }
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "ToString"
        Value       = $toString
    }
    Add-Member @memberParam -Force
    $toJSON = {
        Process {
            $outFile = @{}
            foreach ($obj in $args) {
                $outFile["Path"] = $obj
            }
            Export-Vaporshell -VaporshellTemplate $this -As JSON -Verbose:$false @outFile -Force
        }
    }
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "ToJSON"
        Value       = $toJSON
    }
    Add-Member @memberParam
    $toYAML = {
        Process {
            $outFile = @{}
            foreach ($obj in $args) {
                $outFile["Path"] = $obj
            }
            Export-Vaporshell -VaporshellTemplate $this -As YAML -Verbose:$false @outFile -Force
        }
    }
    $memberParam = @{
        MemberType  = "ScriptMethod"
        InputObject = $tempObj
        Name        = "ToYAML"
        Value       = $toYAML
    }
    Add-Member @memberParam
    $addMetadata = {
        Process {
            $ObjName = "Metadata"
            $allowedTypes = "Vaporshell.Transform","Vaporshell.Metadata"
            foreach ($obj in $args) {
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ( -not ($this.$ObjName)) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Props)
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
                    if ( -not ($this.$ObjName)) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Props)
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
                    if ( -not ($this.$ObjName)) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Props)
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
                    if ( -not ($this.$ObjName)) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Props)
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
                if ($obj.Props.Type -like "AWS::Serverless*" -and $this.Transform -ne "AWS::Serverless-2016-10-31") {
                    if ( -not ($this.Transform)) {
                        $this | Add-Member -MemberType NoteProperty -Name Transform -Value "AWS::Serverless-2016-10-31"
                    }
                    else {
                        $this.Transform = "AWS::Serverless-2016-10-31"
                    }
                }
                if ([string]$($obj.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    if ( -not ($this.$ObjName)) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Props)
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
                    if ( -not ($this.$ObjName)) {
                        Write-Verbose "The $ObjName property was not found on the Vaporshell template. Adding the property to the template now."
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value ([PSCustomObject]@{})
                    }
                    Add-Member -InputObject $this.$ObjName -MemberType NoteProperty -Name $($obj.LogicalID) -Value $($obj.Props)
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
                    if ( -not ($this.$ObjName)) {
                        $this | Add-Member -MemberType NoteProperty -Name "$ObjName" -Value $($obj.Props)
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