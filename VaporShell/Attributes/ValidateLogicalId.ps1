using namespace System.Management.Automation
class ValidateLogicalId : ValidateArgumentsAttribute {
    hidden [EngineIntrinsics] $engineIntrinsics

    [Void] ValidateLogicalIdString(
        [object]$logicalId
    ) {
        if ($logicalId.ToString() -notmatch '^[a-zA-Z0-9]*$') {
            $errorRecord = [ErrorRecord]::new(
                [ArgumentException]::new("The LogicalId must be alphanumeric (a-z, A-Z, 0-9) and unique within the template. Value provided: '$logicalId'"),
                'InvalidLogicalId',
                [ErrorCategory]::InvalidArgument,
                $logicalId
            )
            throw $errorRecord
        }
    }

    [Void] Validate([object] $arguments, [EngineIntrinsics] $engineIntrinsics) {
        $this.engineIntrinsics = $engineIntrinsics
        $this.ValidateLogicalIdString($arguments)
    }
}
