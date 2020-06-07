class FnGetAZs : IntrinsicFunction {
    [string] ToString() {
        return "FnGetAZs($($this['Fn::GetAZs']))"
    }

    FnGetAZs() {}

    FnGetAZs([string] $region) {
        $this['Fn::GetAZs'] = $region
    }
}
