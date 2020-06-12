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
        $invalidType = $true
        foreach ($t in $this._validTypes) {
            if ($element -is $t -or $element.GetType().FullName -in $this._validTypes.FullName) {
                $invalidType = $false
                break
            }
        }
        if ($invalidType) {
            throw [VSError]::InvalidType($element, $this._validTypes)
        }
    }
}
