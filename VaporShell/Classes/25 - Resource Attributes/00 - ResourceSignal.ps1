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
            param([object] $count)
            if ($cast = $count -as [int]) {
                $this._count = $cast
            }
            elseif ($count -is [IntrinsicFunction] -or $count -is [ConditionFunction]) {
                $this._count = $count
            }
            else {
                throw [VSError]::InvalidArgument($count,"Count must be an integer or a Condition or Intrinsic function.")
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Timeout -Value {
            $this._timeout
        } -SecondValue {
            param([object] $timeout)
            if ($timeout -is [string]) {
                try {
                    # Check if it's a valid ISO8601 duration string
                    $null = [XmlConvert]::ToTimeSpan($timeOut)
                    $this._timeout = $timeout
                }
                catch {
                    throw [VSError]::InvalidArgument($timeout,"Timeout must be a valid ISO8601 duration string or an Intrinsic or Condition Function object!")
                }
            }
            elseif ($count -is [IntrinsicFunction] -or $count -is [ConditionFunction]) {
                $this._timeout = $timeout
            }
            else {
                throw [VSError]::InvalidArgument($timeout,"Timeout must be a valid ISO8601 duration string or an Intrinsic or Condition Function object!")
            }
        }
    }

    ResourceSignal() : base() {}
    ResourceSignal([IDictionary] $props) : base($props) {}
    ResourceSignal([psobject] $props) : base($props) {}
}
