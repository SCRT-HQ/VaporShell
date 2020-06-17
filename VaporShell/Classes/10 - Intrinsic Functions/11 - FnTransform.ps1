
using namespace System
using namespace System.Collections
using namespace System.Collections.Specialized

class FnTransform : VSHashtable {
    hidden [string] $_vsFunctionName = 'Add-FnTransform'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html'

    [string] $LogicalId = 'Fn::Transform'
    [string] $Name
    [IDictionary] $Parameters

    [string] ToString() {
        return "FnTransform($($this['Fn::Transform']))"
    }

    hidden [void] _addAccessors() {
        $this.LogicalId = 'Fn::Transform'
        $this['Name'] = ''
        $this | Add-Member -Force -MemberType ScriptProperty -Name 'LogicalId' -Value {
            'Fn::Transform'
        } -SecondValue {
            param([object] $value)
            $this.LogicalId = 'Fn::Transform'
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name 'Parameters' -Value {
            $this['Parameters']
        } -SecondValue {
            param([object] $value)
            if ($value -is [IDictionary]) {
                $this['Parameters'] = $value
            }
            elseif ($value -is [psobject]) {
                $ord = [ordered]@{}
                $value.PSObject.Properties | ForEach-Object {
                    $ord[$_.Name] = $_.Value
                }
                $this['Parameters'] = $ord
            }
            else {
                throw [VSError]::InvalidArgument($value,"Input value for the Parameters property on an FnTransform object must be either an IDictionary or a PSObject.")
            }
        }
    }

    FnTransform() : base() {}
    FnTransform([IDictionary] $props) : base($props) {}
    FnTransform([psobject] $props) : base($props) {}
}
