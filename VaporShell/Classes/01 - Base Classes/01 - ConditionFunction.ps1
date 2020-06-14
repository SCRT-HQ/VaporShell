using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class ConditionFunction : VSHashtable {
    hidden [string] $_topLevelKey = '_SHOULD_BE_OVERRIDDEN'
    hidden [type[]] $_validTypes = @([string], [int], [bool], [IDictionary], [psobject], [FnFindInMap], [FnRef], [ConditionFunction])

    [string] ToString() {
        return "$($this._topLevelKey -replace '\W' -replace '^Fn','Con')($($this[$this._topLevelKey]))"
    }

    hidden [void] _validateInput([object[]] $inputData) {}

    ConditionFunction() : base() {}
    ConditionFunction([object[]] $value) {
        $this._addAccessors()
        $this._validateInput($value)
        $this[$this._topLevelKey] = @()
        foreach ($item in $value) {
            $isValid = foreach ($type in $this._validTypes) {
                if ($item -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($item, $this._validTypes)
            }
            Write-Debug "Adding $($this.GetType().Name) from input type $($item.GetType())"
            $this[$this._topLevelKey] += $item
        }
    }
}
