using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSOutput : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'New-VaporOutput'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html'

    hidden [object] $_value

    [string] $Description
    [string] $Value
    [Export] $Export

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Value' -Value {
            $this._value
        } -SecondValue {
            param([ValidateType([string], [int], [bool], [IntrinsicFunction], [ConditionFunction])] [object] $value)
            $this._value = $value
        }
    }

    VSOutput() : base() {}
    VSOutput([IDictionary] $props) : base($props) {}
    VSOutput([psobject] $props) : base($props) {}
}
