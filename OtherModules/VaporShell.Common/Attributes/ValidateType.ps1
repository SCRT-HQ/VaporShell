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
        if ($element.GetType().FullName -notin $this._validTypes.FullName) {
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
