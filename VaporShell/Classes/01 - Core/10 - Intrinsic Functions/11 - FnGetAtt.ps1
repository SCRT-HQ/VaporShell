class FnGetAtt : IntrinsicFunction {
    [string] ToString() {
        return "FnGetAtt($($this['Fn::GetAtt']))"
    }

    FnGetAtt() {}

    FnGetAtt([string] $logicalNameOfResource, [string] $attributeName) {
        $this['Fn::GetAtt'] = @($logicalNameOfResource,$attributeName)
    }
}
