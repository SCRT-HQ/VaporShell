class BucketProperties : ResourceProperties {
    hidden [IntrinsicOrString([FnRef])] [object]
    $_bucketName
    [object]
    $BucketName

    hidden [void] _addAccessors() {
        $this | Add-Member -MemberType ScriptProperty -Name BucketName -Value {
            $this._bucketName
        } -SecondValue {
            param([object] $value)
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
