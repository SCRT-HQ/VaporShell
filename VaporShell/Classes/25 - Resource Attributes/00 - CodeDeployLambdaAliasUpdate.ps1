using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class CodeDeployLambdaAliasUpdate : VSObject {
    hidden [string] $_vsFunctionName = 'Add-UpdatePolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-codedeploylambdaaliasupdate'

    hidden [object] $_afterAllowTrafficHook
    hidden [object] $_applicationName
    hidden [object] $_beforeAllowTrafficHook
    hidden [object] $_deploymentGroupName

    [string] $AfterAllowTrafficHook
    [string] $ApplicationName
    [string] $BeforeAllowTrafficHook
    [string] $DeploymentGroupName

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name AfterAllowTrafficHook -Value {
            $this._afterAllowTrafficHook
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            $this._afterAllowTrafficHook = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name ApplicationName -Value {
            $this._applicationName
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            $this._applicationName = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name BeforeAllowTrafficHook -Value {
            $this._beforeAllowTrafficHook
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            $this._beforeAllowTrafficHook = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeploymentGroupName -Value {
            $this._deploymentGroupName
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            $this._deploymentGroupName = $value
        }
    }

    CodeDeployLambdaAliasUpdate() : base() {}
    CodeDeployLambdaAliasUpdate([IDictionary] $props) : base($props) {}
    CodeDeployLambdaAliasUpdate([psobject] $props) : base($props) {}
}
