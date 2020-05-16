
class IntrinsicOrStringAttribute : System.Management.Automation.ArgumentTransformationAttribute {
    hidden [System.Management.Automation.EngineIntrinsics]
    $engineIntrinsics
    [Type[]]
    $ValidTypes = @([string])

    IntrinsicOrString() {
        $this.ValidTypes = @([string])
    }
    IntrinsicOrString([Type[]] $validTypes) {
        $this.ValidTypes = @([string],$validTypes)
    }

    hidden [void]
    ValidateInput([object] $inputData) {
        if ($inputData.GetType().FullName -in $this.ValidTypes.FullName) {
            return
        }
        else {
            throw [System.Management.Automation.ArgumentTransformationMetadataException]::new(
                "$($inputData.GetType().FullName) is not a valid type for this property. Valid types include: $($this.ValidTypes.FullName -join ', ')"
            )
        }
    }

    [object]
    Transform([System.Management.Automation.EngineIntrinsics] $engineIntrinsics, [object] $inputData) {
        $this.engineIntrinsics = $engineIntrinsics
        $this.ValidateInput($inputData)
        return $inputData
    }
}
