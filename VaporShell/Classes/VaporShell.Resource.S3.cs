using System;

namespace VaporShell.Resource.S3
{
    public class Bucket : VaporShell.Core.Resource
    {
        public string BucketName { get; set; }
        public override string Type { get; set; } = "AWS::S3::Bucket";
        public Bucket() { }
        public Bucket(string bucketName) => BucketName = bucketName;
    }
}