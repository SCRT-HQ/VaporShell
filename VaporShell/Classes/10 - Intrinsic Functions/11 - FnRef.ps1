class FnRef : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnRef'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ref.html'

    [string] ToString() {
        return "Ref($($this['Ref']))"
    }

    FnRef() {}

    FnRef([string] $ref) {
        $this['Ref'] = $ref
    }
}
