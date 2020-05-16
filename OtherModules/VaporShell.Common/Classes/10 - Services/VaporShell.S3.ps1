class BucketProperties : ResourceProperties {
    hidden [object]
    $_bucketName
    [object]
    $BucketName

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name BucketName -Value {
            $this._bucketName
        } -SecondValue {
            param([ValidateType([string],[FnRef],[FnBase64])][object] $value)
            $this._bucketName = $value
        }
    }

    BucketProperties() : base() {}
    BucketProperties([hashtable] $props) : base($props) {}
    BucketProperties([psobject] $props) : base($props)  {}
}

class Bucket : Resource {
    [BucketProperties] $Properties
    [string] $Type = 'AWS::S3::Bucket'

    Bucket() { }
    Bucket([hashtable] $props) : base($props) {}
    Bucket([psobject] $props) : base($props)  {}

    Bucket([BucketProperties] $properties) {
        $this.Properties = $properties
    }
}
