using namespace System.Management.Automation

class ValidateType : ValidateEnumeratedArgumentsAttribute {
    hidden [Type[]]
    $ValidTypes = @([string])

    ValidateType() {
        $this.ValidTypes = @([string])
    }
    ValidateType([Type] $validType) {
        $this.ValidTypes = @([string],$validType)
    }
    ValidateType([Type] $validType1,[Type] $validType2) {
        $this.ValidTypes = @([string],$validType1,$validType2)
    }
    ValidateType([Type] $validType1,[Type] $validType2,[Type] $validType3) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3)
    }
    ValidateType([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4)
    }
    ValidateType([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5)
    }
    ValidateType([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5,[Type] $validType6) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5,$validType6)
    }
    ValidateType([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5,[Type] $validType6,[Type] $validType7) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5,$validType6,$validType7)
    }
    ValidateType([Type] $validType1,[Type] $validType2,[Type] $validType3,[Type] $validType4,[Type] $validType5,[Type] $validType6,[Type] $validType7,[Type] $validType8) {
        $this.ValidTypes = @([string],$validType1,$validType2,$validType3,$validType4,$validType5,$validType6,$validType7,$validType8)
    }

    [Void] ValidateElement(
        [Object]$element
    ) {
        if ($element.GetType().FullName -notin $this.ValidTypes.FullName) {
            $errorRecord = [ErrorRecord]::new(
                [ArgumentException]::new("$($element.GetType().FullName) is not a valid type for this property. Valid types include: $(($this.ValidTypes | Sort-Object FullName -Unique).FullName -join ', ')"),
                'InvalidType',
                [ErrorCategory]::InvalidArgument,
                $element
            )
            throw $errorRecord
        }
    }
}
