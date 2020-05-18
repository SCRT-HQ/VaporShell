class FnRef : IntrinsicFunction {
    [string] ToString() {
        return "Ref($($this.Ref))"
    }

    FnRef([string] $value) {
        $this['Ref'] = $value
    }
}
