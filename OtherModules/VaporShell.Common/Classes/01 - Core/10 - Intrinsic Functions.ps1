class IntrinsicFunction : VSHashtable {
    IntrinsicFunction() : base() {}
}

class FnRef : IntrinsicFunction {
    [string] ToString() {
        return "Ref($($this.Ref))"
    }

    FnRef([string] $value) {
        $this['Ref'] = $value
    }
}

class FnBase64 : IntrinsicFunction {
    [string] ToString() {
        return "FnBase64($($this['Fn::Base64']))"
    }

    FnBase64([object] $value) {
        $this['Fn::Base64'] = $value
        $this | Add-Member -MemberType NoteProperty -Name Test -Value 'Testing' -Force
    }
}

class FnCidr : IntrinsicFunction {
    [string] ToString() {
        return "FnCidr($($this['Fn::Cidr']))"
    }

    FnCidr([object] $ipBlock, [object] $count, [object] $cidrBits) {
        $this['Fn::Cidr'] = @($ipBlock, $count, $cidrBits)
    }
}

class FnFindInMap : IntrinsicFunction {
    [string] ToString() {
        return "FnFindInMap($($this['Fn::FindInMap']))"
    }

    FnBase64([string] $mapName, [object] $topLevelKey, [object] $secondLevelKey) {
        $this['Fn::FindInMap'] = @($mapName, $topLevelKey, $secondLevelKey)
    }
}
