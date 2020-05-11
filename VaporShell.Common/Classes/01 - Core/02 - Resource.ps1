class ResourceProperties : VSObject {
    ResourceProperties() { }

<#     ResourceProperties([hashtable] $props) {
        $props.GetEnumerator() | ForEach-Object {
            $this | Add-Member -MemberType NoteProperty -Name $_.Key -Value $_.Value -Force
        }
    }

    ResourceProperties([psobject] $props) {
        $props.PSObject.Properties.Name | ForEach-Object {
            $this | Add-Member -MemberType NoteProperty -Name $_ -Value $props."$_" -Force
        }
    } #>
}

class Resource : VSObject {
    hidden [string] $_logicalId
    hidden [object] $_deletionPolicy
    hidden [object] $_updateReplacePolicy

    [string] $LogicalId
    [string] $Type
    [ResourceProperties] $Properties
    [object] $Condition
    [object] $CreationPolicy
    [object] $UpdatePolicy
    [DeletionPolicy] $DeletionPolicy
    [UpdateReplacePolicy] $UpdateReplacePolicy
    [string[]] $DependsOn
    [object] $Metadata


    [string] ToString() {
        return $this.LogicalId
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name LogicalId -Value {$this._logicalId} -SecondValue {
            param([string] $logicalId)
            if ($logicalId -notmatch '^[a-zA-Z0-9]*$') {
                throw "The LogicalId must be alphanumeric (a-z, A-Z, 0-9) and unique within the template. Value provided: '$logicalId'"
            }
            else {
                $this._logicalId = $logicalId
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value {$this._deletionPolicy} -SecondValue {
            param([object] $deletionPolicy)
            if ($deletionPolicy -is [DeletionPolicy]) {
                $this._deletionPolicy = $deletionPolicy.ToString()
            }
            else {
                $this._deletionPolicy = $deletionPolicy
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {$this._updateReplacePolicy} -SecondValue {
            param([UpdateReplacePolicy] $updateReplacePolicy)
            $this._updateReplacePolicy = $updateReplacePolicy.ToString()
        }
    }

    Resource() {
        $this._addAccessors()
    }

    Resource([hashtable] $props) {
        $this._addAccessors()
        $props.GetEnumerator() | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_.Key) {
                $this."$($_.Key)" = $_.Value
            }
        }
    }

    Resource([psobject] $props) {
        $this._addAccessors()
        $props.PSObject.Properties.Name | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_) {
                $this."$($_)" = $props."$_"
            }
        }
    }
}
