
using namespace System
using namespace System.Collections

class FnTransform : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'Add-FnTransform'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html'

    [string] $LogicalId = 'Fn::Transform'
    [string] $Name
    [IDictionary] $Parameters

    [string] ToString() {
        return "FnTransform($($this['Fn::Transform']))"
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name LogicalId -Value {
            'Fn::Transform'
        } -SecondValue {
            Write-Warning "This is a readonly property!"
        }
    }

    FnTransform() : base() {}
    FnTransform([IDictionary] $props) : base($props) {}
    FnTransform([psobject] $props) : base($props) {}
}
