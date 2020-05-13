class BucketProperties : ResourceProperties {
    [object] $BucketName
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
