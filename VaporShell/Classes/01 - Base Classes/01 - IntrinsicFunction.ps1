using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class IntrinsicFunction : VSHashtable {
    hidden [string] $_topLevelKey = '_SHOULD_BE_OVERRIDDEN'
    hidden [type[]] $_validTypes = @([string], [int], [IDictionary], [psobject], [IntrinsicFunction], [ConditionFunction])

    [string] ToString() {
        return "$($this._topLevelKey -replace '\W')($($this[$this._topLevelKey]))"
    }

    hidden [void] _validateInput([object] $inputData) {}

    IntrinsicFunction() : base() {}
    IntrinsicFunction([object] $value) {
        $this._addAccessors()
        $this._validateInput($value)
        $isValid = foreach ($type in $this._validTypes) {
            if ($value -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($value, $this._validTypes)
        }
        if ($value -is [IDictionary] -and $value -isnot [IntrinsicFunction] -and $value -isnot [ConditionFunction]) {
            if ($value.Contains($this._topLevelKey)) {
                Write-Debug "Contructing $($this.GetType().Name) from input IDictionary"
                $this[$this._topLevelKey] = $value[$this._topLevelKey]
            }
            else {
                throw [VSError]::InvalidArgument($value, "The input object is missing the Key '$($this._topLevelKey)'. Unable to construct a $($this.GetType()) object from the input data.")
            }
        }
        elseif ($value -is [psobject]) {
            if ($value.PSObject.Properties.Name -contains $this._topLevelKey) {
                Write-Debug "Contructing $($this.GetType().Name) from input PSObject"
                $this[$this._topLevelKey] = $value."$($this._topLevelKey)"
            }
            else {
                throw [VSError]::InvalidArgument($value, "The input object is missing the Property '$($this._topLevelKey)'. Unable to construct a $($this.GetType()) object from the input data.")
            }
        }
        else {
            $this[$this._topLevelKey] = $value
        }
    }
}
