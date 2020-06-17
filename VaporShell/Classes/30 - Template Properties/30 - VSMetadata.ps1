using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSMetadata : VSHashtable {
    hidden [string] $_vsFunctionName = 'New-VaporMetadata'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html'

    [ValidateLogicalId()] [string] $LogicalId
    [object] $Metadata

    [string] ToString() {
        return $this.LogicalId
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name 'Metadata' -Value {
            $this.ToOrderedDictionary()
        } -SecondValue {
            param([object] $value)
            if ($value -isnot [IDictionary] -and $value -isnot [psobject]) {
                throw [VSError]::InvalidType($value,@([IDictionary],[psobject]))
            }
            if ($value -is [IDictionary]) {
                $value.GetEnumerator() | ForEach-Object {
                    $this[$_.Key] = $_.Value
                }
            }
            elseif ($value -is [psobject]) {
                $value.PSObject.Properties | ForEach-Object {
                    $this[$_.Name] = $_.Value
                }
            }
        }
    }

    VSMetadata() : base() {}
    VSMetadata([IDictionary] $props) {
        $mainKey = $props.Keys | Select-Object -First 1
        $mainValue = $props.Values | Select-Object -First 1
        if (
            $null -ne $props.LogicalId -and
            $null -ne $props.Metadata
        ) {
            Write-Debug "Creating VSMetadata from correctly formed IDictionary"
            $this.LogicalId = $props.LogicalId
            $this.Metadata = $props.Metadata
        }
        elseif (
            $props.Keys.Count -eq 1
        ) {
            Write-Debug "Creating VSMetadata from raw IDictionary"
            $this.LogicalId = $mainKey
            $this.Metadata = $mainValue
        }
        else {
            throw [VSError]::InvalidArgument($props,"Input IDictionary did not match expected contents, unable to construct a VSMetadata object.")
        }
    }
    VSMetadata([psobject] $props) {
        $mainKey = $props.PSObject.Properties.Name | Select-Object -First 1
        $mainValue = $props.PSObject.Properties.Value | Select-Object -First 1
        if (
            $null -ne $props.LogicalId -and
            $null -ne $props.Metadata
        ) {
            Write-Debug "Creating VSMetadata from correctly formed PSObject"
            $this.LogicalId = $props.LogicalId
            $this.Metadata = $props.Metadata
        }
        elseif (
            $props.PSObject.Properties.Name.Count -eq 1
        ) {
            Write-Debug "Creating VSMetadata from raw PSObject"
            $this.LogicalId = $mainKey
            $this.Metadata = $mainValue
        }
        else {
            throw [VSError]::InvalidArgument($props,"Input PSObject did not match expected contents, unable to construct a VSMetadata object.")
        }
    }
}
