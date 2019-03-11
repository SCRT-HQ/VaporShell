using System;
using VaporShell.Test;

namespace VaporShell.Resource.S3 {
    public class BucketProperties : ResourceProperties {
        public string BucketName { get; set; }
        public string Owner { get; set; }
        public BucketProperties() {}
        public BucketProperties(string bucketName) {
            this.BucketName = bucketName;
        }
    }
    public class Bucket : VaporShell.Test.Resource {
        public override string Type { get; set; } = "AWS::S3::Bucket";

        public override ResourceProperties Properties { get; set; }
        public Bucket() { }
        public Bucket(string bucketName) {
            this.Properties = new BucketProperties(bucketName);
        }
    }
}
