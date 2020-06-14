class ConEquals : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConEquals'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-equals'
    hidden [string] $_topLevelKey = 'Fn::Equals'

    [object] $ValueOne
    [object] $ValueTwo

    hidden [void] _validateInput([object[]] $inputData) {
        if ($inputData.Count -ne 2) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 2. Count provided: $($inputData.Count)")
        }
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name ValueOne -Value {
            $this[$this._topLevelKey] | Select-Object -First 1
        } -SecondValue {
            param([object] $value)
            $clean = if ($value | Get-Member -Name ToOrderedDictionary* -MemberType Method -ErrorAction SilentlyContinue) {
                $value.ToOrderedDictionary()
            }
            else {
                $value
            }
            if ($null -eq $this[$this._topLevelKey]) {
                $this[$this._topLevelKey] = @($clean)
            }
            else {
                if ($this[$this._topLevelKey].Count -ge 1) {
                    $this[$this._topLevelKey][0] = $clean
                }
                else {
                    $this[$this._topLevelKey] += $clean
                }
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name ValueTwo -Value {
            $this[$this._topLevelKey] | Select-Object -First 1
        } -SecondValue {
            param([object] $value)
            $clean = if ($value | Get-Member -Name ToOrderedDictionary* -MemberType Method -ErrorAction SilentlyContinue) {
                $value.ToOrderedDictionary()
            }
            else {
                $value
            }
            if ($null -eq $this[$this._topLevelKey]) {
                $this[$this._topLevelKey] = @($null,$clean)
            }
            else {
                if ($this[$this._topLevelKey].Count -gt 1) {
                    $this[$this._topLevelKey][1] = $clean
                }
                else {
                    $this[$this._topLevelKey] += $clean
                }
            }
        }
    }

    ConEquals() : base() {}
    ConEquals([object[]] $conditions) : base($conditions) {}
    ConEquals(
        [object] $value1,
        [object] $value2
    ) {
        $this[$this._topLevelKey] = @($value1,$value2)
    }
}
