class S3Bucket : VSResource {
    [string] $Type = 'AWS::S3::Bucket'
    [object] $AccessControl
    [object] $BucketName
    [VSResourceTag[]] $Tags

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name AccessControl -Value {
            $this.Properties['AccessControl']
        } -SecondValue {
            param([ValidateType(([string],[FnRef],[FnBase64]))][object] $value)
            $this.Properties['AccessControl'] = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name BucketName -Value {
            $this.Properties['BucketName']
        } -SecondValue {
            param([ValidateType(([string],[FnRef],[FnBase64]))][object] $value)
            $this.Properties['BucketName'] = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Tags -Value {
            $this.Properties['Tags']
        } -SecondValue {
            param([object] $value)
            $this.Properties['Tags'] = [VSResourceTag]::TransformTag($value)
        }
    }

    S3Bucket() { }
    S3Bucket([System.Collections.IDictionary] $props) : base($props) {}
    S3Bucket([psobject] $props) : base($props)  {}
}
