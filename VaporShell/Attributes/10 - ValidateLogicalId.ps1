using namespace System.Management.Automation
class ValidateLogicalId : ValidateArgumentsAttribute {
    hidden [EngineIntrinsics] $engineIntrinsics

    [Void] ValidateLogicalIdString(
        [object] $logicalId
    ) {
        if ($logicalId.ToString() -notmatch '^([a-zA-Z0-9]*|AWS::CloudFormation::.*)$') {
            throw [VSError]::InvalidLogicalId($logicalId)
        }
    }

    [Void] Validate([object] $arguments, [EngineIntrinsics] $engineIntrinsics) {
        $this.engineIntrinsics = $engineIntrinsics
        $this.ValidateLogicalIdString($arguments)
    }
}
