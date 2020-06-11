using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class ConAnd : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConAnd'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and'

    [string] ToString() {
        return "ConAnd($($this['Fn::And']))"
    }

    ConAnd() {}

    ConAnd([object[]] $conditions) {
        if ($conditions.Count -lt 2 -or $conditions.Count -gt 10) {
            $record = [VSError]::new(
                [ArgumentException]::new("$($conditions.Count) condition(s) provided! The minimum number of conditions that you can include is 2, and the maximum is 10."),
                'InvalidArgumentCount',
                [ErrorCategory]::InvalidArgument,
                $conditions
            )
            throw [VSError]::InsertError($record)
        }
        $validTypes = @([string], [int], [IDictionary], [psobject], [ConditionRef], [FnFindInMap], [FnRef], [ConditionFunction])
        foreach ($item in $conditions) {
            $isValid = foreach ($type in $validTypes) {
                if ($item -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($item, $validTypes)
            }
        }
        $this['Fn::And'] = @($conditions)
    }
}
