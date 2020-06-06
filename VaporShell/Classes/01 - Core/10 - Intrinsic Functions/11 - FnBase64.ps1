class FnBase64 : IntrinsicFunction {
    [string] ToString() {
        return "FnBase64($($this['Fn::Base64']))"
    }

    FnBase64() {}

    FnBase64([object] $value) {
        $this['Fn::Base64'] = $value
    }
}
