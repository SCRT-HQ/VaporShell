class FnCidr : IntrinsicFunction {
    [string] ToString() {
        return "FnCidr($($this['Fn::Cidr']))"
    }

    FnCidr() {}

    FnCidr([object] $ipBlock, [object] $count, [object] $cidrBits) {
        $this['Fn::Cidr'] = @($ipBlock, $count, $cidrBits)
    }
}
