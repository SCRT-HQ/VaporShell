using namespace System.Management.Automation
class ValidateLogicalId : ValidateArgumentsAttribute {
    hidden [EngineIntrinsics] $engineIntrinsics

    [Void] ValidateLogicalIdString(
        [object] $logicalId
    ) {
        if ($logicalId.ToString() -notmatch '^(\w+|AWS::CloudFormation::.*|Fn::Transform)$') {
            throw [VSError]::InvalidLogicalId($logicalId)
        }
    }

    [Void] Validate([object] $arguments, [EngineIntrinsics] $engineIntrinsics) {
        $this.engineIntrinsics = $engineIntrinsics
        $this.ValidateLogicalIdString($arguments)
    }
}
