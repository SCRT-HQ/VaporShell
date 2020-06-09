using namespace System.Management.Automation

class FnFindInMap : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnFindInMap'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html'

    [string] ToString() {
        return "FnFindInMap($($this['Fn::FindInMap']))"
    }

    FnFindInMap() {}

    FnFindInMap(
        [string] $mapName,
        [object] $topLevelKey,
        [object] $secondLevelKey
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($topLevelKey -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($topLevelKey, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($secondLevelKey -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($secondLevelKey, $validTypes)
        }
        $this['Fn::FindInMap'] = @($mapName, $topLevelKey, $secondLevelKey)
    }
}
