using namespace System.Management.Automation
class ValidateType : ValidateEnumeratedArgumentsAttribute {
    hidden [Type[]]
    $_validTypes

    ValidateType([Type] $validType) {
        $this._validTypes = @($validType)
    }
    ValidateType([Type[]] $validTypes) {
        $this._validTypes = $validTypes
    }

    [Void] ValidateElement(
        [Object]$element
    ) {
        if ($element.GetType().FullName -in $this._validTypes.FullName) {
            Write-Debug "[$element] Validated current Type as acceptable -- matched against type: $($element.GetType().FullName)"
        }
        elseif ($element.GetType().BaseType.FullName -in $this._validTypes.FullName) {
            Write-Debug "[$element] Validated BaseType as acceptable -- matched against type: $($element.GetType().BaseType.FullName)"
        }
        elseif ($validMatch = $this._validTypes | Where-Object {$element -is $_}) {
            Write-Debug "[$element] Validated MatchedType(s) as acceptable -- matched against type: $($validMatch.FullName)"
        }
        else {
            throw [VSError]::InvalidType($element, $this._validTypes)
        }
    }
}
