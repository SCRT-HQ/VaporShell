class Bucket : Resource {
    [string]
    $Type = 'AWS::S3::Bucket'
    [object]
    $AccessControl
    [object]
    $BucketName

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
    }

    Bucket() { }
    Bucket([System.Collections.IDictionary] $props) : base($props) {}
    Bucket([psobject] $props) : base($props)  {}
}
