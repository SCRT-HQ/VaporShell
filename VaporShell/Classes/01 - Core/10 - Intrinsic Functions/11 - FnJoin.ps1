class FnJoin : IntrinsicFunction {
    [string] ToString() {
        return "FnJoin($($this['Fn::Join']))"
    }

    FnJoin() {}

    FnJoin([string] $delimiter, [object[]] $listOfValues) {
        $this['Fn::Join'] = @($delimiter, @($listOfValues))
    }
}
