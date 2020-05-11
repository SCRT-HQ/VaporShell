class S3BucketProperties : ResourceProperties {
    [object] $BucketName
    S3BucketProperties() { }
}

class S3Bucket : Resource {
    [S3BucketProperties] $Properties
    [string] $Type = 'AWS::S3::Bucket'

    S3Bucket() { }
    S3Bucket([S3BucketProperties] $properties) {
        $this.Properties = $properties
    }
}
