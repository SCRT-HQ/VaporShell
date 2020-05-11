class IntrinsicFunction : VSObject {
    IntrinsicFunction() {}
}

class FnRef : IntrinsicFunction {
    [string] $Ref

    [string] ToString() {
        return "Ref($($this.Ref))"
    }

    FnRef () { }

    FnRef ([string] $value) {
        $this.Ref = $value
    }
}

class FnBase64 : IntrinsicFunction {
    [string] ToString() {
        return "FnBase64($($this.'Fn::Base64'))"
    }

    FnBase64() {
        $this | Add-Member -Force -MemberType NoteProperty -Name 'Fn::Base64' -Value $null
    }

    FnBase64([object] $value) {
        $this | Add-Member -Force -MemberType NoteProperty -Name 'Fn::Base64' -Value $value
    }
}
