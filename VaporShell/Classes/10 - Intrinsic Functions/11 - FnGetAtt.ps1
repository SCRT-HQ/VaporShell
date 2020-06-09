class FnGetAtt : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnGetAtt'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html'

    [string] ToString() {
        return "FnGetAtt($($this['Fn::GetAtt']))"
    }

    FnGetAtt() {}

    FnGetAtt([string] $logicalNameOfResource, [string] $attributeName) {
        $this['Fn::GetAtt'] = @($logicalNameOfResource,$attributeName)
    }
}
