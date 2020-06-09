using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class Export : VSObject {
    hidden [string] $_vsFunctionName = 'New-VaporOutput'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html'

    hidden [object] $_name

    [string] $Name

    [string] ToString() {
        return $this._name.ToString()
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Name' -Value {
            $this._name
        } -SecondValue {
            param([ValidateType(([string], [IntrinsicFunction]))] [object] $value)
            $this._name = $value
        }
    }

    Export([object] $name) {
        $this._addAccessors()
        $this.Name = $name
    }

    Export([string] $name) {
        $this._addAccessors()
        $this.Name = $name
    }

    Export() : base() {}
    Export([IDictionary] $props) : base($props) {}
    Export([psobject] $props) : base($props) {}
}
