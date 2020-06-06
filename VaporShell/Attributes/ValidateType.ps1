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
            if ($element -is $t) {
                $invalidType = $false
                break
            }
        }
        if ($invalidType) {
            $errorRecord = [ErrorRecord]::new(
                [ArgumentException]::new("$($element.GetType().FullName) is not a valid type for this property. Valid types include: $(($this._validTypes.FullName | Sort-Object -Unique) -join ', ')"),
                'InvalidType',
                [ErrorCategory]::InvalidArgument,
                $element
            )
            throw $errorRecord
        }
    }
}
