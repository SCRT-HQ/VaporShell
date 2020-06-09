using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation
using namespace System.Xml

class ResourceSignal : VSObject {
    hidden [string] $_vsFunctionName = 'Add-CreationPolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html#cfn-attributes-creationpolicy-resourcesignal'

    hidden [object] $_count
    hidden [object] $_timeout

    [int] $Count
    [string] $Timeout

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Count -Value {
            $this._count
        } -SecondValue {
            param(
                [ValidateType(([int], [IntrinsicFunction], [ConditionFunction]))] [object]
                $count
            )
            $this._count = $count
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Timeout -Value {
            $this._timeout
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]
                $timeout
            )
            if ($timeout -is [string]) {
                try {
                    # Check if it's a valid ISO8601 duration string
                    $null = [XmlConvert]::ToTimeSpan($timeOut)
                }
                catch {
                    $errorRecord = [VSError]::new(
                        [ArgumentException]::new("Timeout must be a valid ISO8601 duration string or an Intrinsic or Condition Function object!"),
                        'InvalidTimeout',
                        [ErrorCategory]::InvalidArgument,
                        $timeout
                    )
                    throw [VSError]::InsertError($errorRecord)
                }
            }
            $this._timeout = $timeout
        }
    }

    ResourceSignal() : base() {}
    ResourceSignal([IDictionary] $props) : base($props) {}
    ResourceSignal([psobject] $props) : base($props) {}
}
