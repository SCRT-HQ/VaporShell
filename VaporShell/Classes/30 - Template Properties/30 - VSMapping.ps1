using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSMapping : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'New-VaporMapping'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html'

    hidden [object] $_map

    [IDictionary] $Map

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name 'Map' -Value {
            $this._map
        } -SecondValue {
            param([object] $map)
            $ht = [ordered]@{}
            if ($map -is [psobject]) {
                $map.PSObject.Properties | ForEach-Object {
                    if ($_.Name -notmatch 'LogicalId' -and $_.Value -isnot [IDictionary] -and $_.Value -isnot [psobject]) {
                        throw [VSError]::InvalidMap($map, $_.Name, $_.Value)
                    }
                    if ($_.Name -eq 'LogicalId') {
                        $this.LogicalId = $_.Value
                    }
                    else {
                        $ht[$_.Name] = $_.Value
                    }
                }
            }
            elseif ($map -is [IDictionary]) {
                $map.GetEnumerator() | ForEach-Object {
                    if ($_.Key -notmatch 'LogicalId' -and $_.Value -isnot [IDictionary] -and $_.Value -isnot [psobject]) {
                        throw [VSError]::InvalidMap($map, $_.Key, $_.Value)
                    }
                    if ($_.Key -eq 'LogicalId') {
                        $this.LogicalId = $_.Value
                    }
                    else {
                        $ht[$_.Key] = $_.Value
                    }
                }
            }
            else {
                throw [VSError]::InvalidArgument($map,"The Map value must be an IDictionary or PSObject!")
            }
            $this._map = $ht
        }
    }

    VSMapping() : base() {}
    VSMapping([IDictionary] $props) : base($props) {}
    VSMapping([psobject] $props) : base($props) {}
}
