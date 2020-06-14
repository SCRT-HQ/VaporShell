using namespace System.Management.Automation

class FnFindInMap : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnFindInMap'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html'
    hidden [string] $_topLevelKey = 'Fn::FindInMap'

    hidden [void] _validateInput([object] $inputData) {
        if ($inputData.Count -ne 3) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 3. Count provided: $($inputData.Count)")
        }
        elseif ($inputData[0] -isnot [string]) {
            throw [VSError]::InvalidArgument($inputData, "The first item provided when constructing a <$($this.GetType())> object needs to be a string. Type provided: $($inputData[0].GetType())")
        }
    }

    FnFindInMap() : base() {}
    FnFindInMap([object] $value) : base($value) {}

    FnFindInMap(
        [string] $mapName,
        [object] $topLevelKey,
        [object] $secondLevelKey
    ) {
        foreach ($item in @($topLevelKey,$secondLevelKey)) {
            $isValid = foreach ($type in $this._validTypes) {
                if ($item -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($item, $this._validTypes)
            }
        }
        $this[$this._topLevelKey] = @($mapName, $topLevelKey, $secondLevelKey)
    }
}
