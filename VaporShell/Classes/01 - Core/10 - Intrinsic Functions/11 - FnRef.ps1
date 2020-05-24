class FnRef : IntrinsicFunction {
    [string] ToString() {
        return "Ref($($this['Ref']))"
    }

    FnRef([string] $ref) {
        $this['Ref'] = $ref
    }
}
