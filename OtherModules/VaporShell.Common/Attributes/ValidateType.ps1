using namespace System.Management.Automation
class IntrinsicOrString : ArgumentTransformationAttribute {
    hidden [EngineIntrinsics]
    $engineIntrinsics
    [Type[]]
    $ValidTypes = @([string])

    IntrinsicOrString() {
        $this.ValidTypes = @([string])
    }
    IntrinsicOrString([Type] $validType) {
        $this.ValidTypes = @([string],$validType)
    }
    IntrinsicOrString([Type] $validType1,[Type] $validType2) {
        $this.ValidTypes = @([string],$validType1,$validType2)
    }
    IntrinsicOrString([Type] $validType1,[Type] $validType2,[Type] $validType3) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3)
    }
    IntrinsicOrString([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4)
    }
    IntrinsicOrString([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5)
    }
    IntrinsicOrString([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5,[Type] $validType6) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5,$validType6)
    }
    IntrinsicOrString([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5,[Type] $validType6,[Type] $validType7) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5,$validType6,$validType7)
    }
    IntrinsicOrString([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5,[Type] $validType6,[Type] $validType7,[Type] $validType8) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5,$validType6,$validType7,$validType8)
    }

    hidden [void]
    ValidateInput([object] $inputData) {
        if ($inputData.GetType().FullName -in $this.ValidTypes.FullName) {
            return
        }
        else {
            throw [ArgumentTransformationMetadataException]::new(
                "$($inputData.GetType().FullName) is not a valid type for this property. Valid types include: $($this.ValidTypes.FullName -join ', ')"
            )
        }
    }

    [object]
    Transform([EngineIntrinsics] $engineIntrinsics, [object] $inputData) {
        $this.engineIntrinsics = $engineIntrinsics
        $this.ValidateInput($inputData)
        return $inputData
    }
}

class ValidateDnsName : ValidateEnumeratedArgumentsAttribute {
    Hidden $nameRegex = '^([A-Z0-9]|_[A-Z])(([\w\-]{0,61})[^_\-])?(\.([A-Z0-9]|_[A-Z])(([\w\-]{0,61})[^_\-])?)*$|^\.$'

    ValidateDnsName() { }

    [Void] ValidateElement(
        [Object]$element
    ) {
        if (-not ([IPAddress]::TryParse($element, [Ref]$null)) -and $element -notmatch $this.nameRegex) {
            $errorRecord = [ErrorRecord]::new(
                [ArgumentException]::new('Invalid name format'),
                'InvalidDnsName',
                [ErrorCategory]::InvalidArgument,
                $element
            )
            throw $errorRecord
        }
    }
}
