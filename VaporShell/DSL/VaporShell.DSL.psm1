function Template {
    [CmdletBinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [System.Management.Automation.ScriptBlock]
        $Contents,
        [parameter(Mandatory = $false)]
        [ValidateScript({[System.Text.Encoding]::UTF8.GetByteCount($_) -in 0..1024})]
        [Alias('Desc')]
        [System.String]
        $Description,
        [parameter(Mandatory = $false)]
        [ValidateSet("2010-09-09")]
        [Alias('Vers')]
        [System.String]
        $FormatVersion
    )
    Begin {
        $script:templateObjects = @{
            Resources = New-Object System.Collections.ArrayList
            Mappings = New-Object System.Collections.ArrayList
            Conditions = New-Object System.Collections.ArrayList
            Parameters = New-Object System.Collections.ArrayList
            Outputs = New-Object System.Collections.ArrayList
            Transforms = New-Object System.Collections.ArrayList
            Metadata = New-Object System.Collections.ArrayList
        }
        $initParams = @{}
        @('Description','FormatVersion') | ForEach-Object {
            if ($PSBoundParameters.Keys -contains $_) {
                $initParams[$_] = $PSBoundParameters[$_]
            }
        }
        $template = Initialize-Vaporshell @initParams
    }
    Process {
        $Contents.Invoke()
    }
    End {
        foreach ($object in $script:templateObjects['Resources']) {
            Write-Verbose "Adding Resource '$($object.LogicalId)' to template"
            $template.AddResource($object)
        }
        foreach ($object in $script:templateObjects['Mappings']) {
            Write-Verbose "Adding Mapping '$($object.LogicalId)' to template"
            $template.AddMapping($object)
        }
        foreach ($object in $script:templateObjects['Conditions']) {
            Write-Verbose "Adding Condition '$($object.LogicalId)' to template"
            $template.AddCondition($object)
        }
        foreach ($object in $script:templateObjects['Parameters']) {
            Write-Verbose "Adding Parameter '$($object.LogicalId)' to template"
            $template.AddParameter($object)
        }
        foreach ($object in $script:templateObjects['Outputs']) {
            Write-Verbose "Adding Output '$($object.LogicalId)' to template"
            $template.AddOutput($object)
        }
        foreach ($object in $script:templateObjects['Transforms']) {
            Write-Verbose "Adding Transform '$($object.LogicalId)' to template"
            $template.AddTransform($object)
        }
        foreach ($object in $script:templateObjects['Metadata']) {
            Write-Verbose "Adding Metadata '$($object.LogicalId)' to template"
            $template.AddMetadata($object)
        }
        return $template
    }
}
function Resource {
    [CmdletBinding()]
    Param ()
    DynamicParam {
        $RuntimeParameterDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary

        $ParamName_ResourceType = 'ResourceType'
        $AttributeCollection = New-Object System.Collections.ObjectModel.Collection[System.Attribute]
        $ParameterAttribute = New-Object System.Management.Automation.ParameterAttribute
        $ParameterAttribute.Mandatory = $true
        $ParameterAttribute.Position = 0
        $AttributeCollection.Add($ParameterAttribute) 
        $arrSet = (Get-ChildItem "$PSScriptRoot\..\Public\Resource Types").BaseName.Replace('New-VS','') | Sort-Object
        $ValidateSetAttribute = New-Object System.Management.Automation.ValidateSetAttribute($arrSet)
        $AttributeCollection.Add($ValidateSetAttribute)
        $RuntimeParameter = New-Object System.Management.Automation.RuntimeDefinedParameter($ParamName_ResourceType, [System.String], $AttributeCollection)
        $RuntimeParameterDictionary.Add($ParamName_ResourceType, $RuntimeParameter)

        $ParamName_LogicalId = 'LogicalId'
        $AttributeCollection = New-Object System.Collections.ObjectModel.Collection[System.Attribute]
        $ParameterAttribute = New-Object System.Management.Automation.ParameterAttribute
        $ParameterAttribute.Mandatory = $true
        $ParameterAttribute.Position = 1
        $AttributeCollection.Add($ParameterAttribute)
        $validationScriptBlock = [System.Management.Automation.ScriptBlock]{
            if ($_ -match "^[a-zA-Z0-9]*$") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
            }
        }
        $ValidateScriptAttribute = New-Object System.Management.Automation.ValidateScriptAttribute($validationScriptBlock)
        $AttributeCollection.Add($ValidateScriptAttribute)
        $RuntimeParameter = New-Object System.Management.Automation.RuntimeDefinedParameter($ParamName_LogicalId, [System.String], $AttributeCollection)
        $RuntimeParameterDictionary.Add($ParamName_LogicalId, $RuntimeParameter)

        $ParamName_Properties = 'Properties'
        $AttributeCollection = New-Object System.Collections.ObjectModel.Collection[System.Attribute]
        $ParameterAttribute = New-Object System.Management.Automation.ParameterAttribute
        $ParameterAttribute.Mandatory = $true
        $ParameterAttribute.Position = 2
        $AttributeCollection.Add($ParameterAttribute)
        $RuntimeParameter = New-Object System.Management.Automation.RuntimeDefinedParameter($ParamName_Properties, [System.Management.Automation.ScriptBlock], $AttributeCollection)
        $RuntimeParameterDictionary.Add($ParamName_Properties, $RuntimeParameter)

        return $RuntimeParameterDictionary
    }
    Process {
        $scriptBlockString = "`$props = @{$($PSBoundParameters['Properties'].ToString())}; New-VS$($PSBoundParameters['ResourceType']) -LogicalId '$($PSBoundParameters['LogicalId'])' @props"
        $newScriptBlock = [ScriptBlock]::Create($scriptBlockString)
        $object = & $newScriptBlock
        $script:templateObjects['Resources'].Add($object) | Out-Null
    }
}
function Mapping {
    [CmdletBinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true,Position = 1)]
        [Hashtable]
        $Map
    )
    Process {
        $object = New-VaporMapping -LogicalId $LogicalId -Map $Map -Verbose:$false
        $script:templateObjects['Mappings'].Add($object) | Out-Null
    }
}
function CustomResource {
    [CmdletBinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [System.String]
        $ResourceType,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true,Position = 2)]
        [System.Management.Automation.ScriptBlock]
        $Properties
    )
    Process {
        $scriptBlockString = "`$props = @{$($PSBoundParameters['Properties'].ToString())}; New-VaporResource -LogicalId '$($PSBoundParameters['LogicalId'])' -Type '$($PSBoundParameters['ResourceType'])' @props"
        $newScriptBlock = [ScriptBlock]::Create($scriptBlockString)
        $object = & $newScriptBlock
        $script:templateObjects['Resources'].Add($object) | Out-Null
    }
}
function Output {
    [CmdletBinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true,Position = 1)]
        [System.Management.Automation.ScriptBlock]
        $Properties
    )
    Process {
        $scriptBlockString = "`$props = @{$($PSBoundParameters['Properties'].ToString())}; New-VaporOutput -LogicalId '$($PSBoundParameters['LogicalId'])' @props"
        $newScriptBlock = [ScriptBlock]::Create($scriptBlockString)
        $object = & $newScriptBlock
        $script:templateObjects['Outputs'].Add($object) | Out-Null
    }
}

Export-ModuleMember -Function Template,Resource,Mapping,CustomResource,Output