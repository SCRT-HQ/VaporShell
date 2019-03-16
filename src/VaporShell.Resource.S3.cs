using System;
using System.Collections.Generic;

using VaporShell;
using VaporShell.Core;

namespace VaporShell.Resource.S3 {
    public class BucketProperties : VaporShell.Core.ResourceProperties {
        public string AccessControl { get; set; }
        public Bucket.AccelerateConfiguration AccelerateConfiguration { get; set; }
        public Bucket.AnalyticsConfiguration[] AnalyticsConfigurations { get; set; }
        public Bucket.BucketEncryption BucketEncryption { get; set; }
        public string BucketName { get; set; }
        public Bucket.CorsConfiguration CorsConfiguration { get; set; }
        public BucketProperties() {}
    }
    public class Bucket : VaporShell.Core.Resource {
        public override string Type { get; set; } = "AWS::S3::Bucket";
        public override ResourceProperties Properties { get; set; }
        public Bucket() {}

        public class AbortIncompleteMultipartUpload {
            public Int32 DaysAfterInitialization { get; set; }
            public AbortIncompleteMultipartUpload() {}
        }

        public class AccelerateConfiguration {
            public Int32 DaysAfterInitialization { get; set; }
            public AccelerateConfiguration() {}
        }
        public class AnalyticsConfiguration {
            public string Id { get; set; }
            public string Prefix { get; set; }
            public StorageClassAnalysis StorageClassAnalysis { get; set; }
            public AnalyticsConfiguration() {}
        }
        public class StorageClassAnalysis {
            public DataExport DataExport { get; set; }
            public StorageClassAnalysis() {}
        }
        public class DataExport {
            public Destination Destination { get; set; }
            public string OutputSchemaVersion { get; set; }
            public DataExport() {}
        }
        public class Destination {
            public string BucketAccountId { get; set; }
            public string BucketArn { get; set; }
            public string Format { get; set; }
            public string Prefix { get; set; }
            public Destination() {}
        }
        public class BucketEncryption {
            public ServerSideEncryptionRule[] ServerSideEncryptionConfiguration { get; set; }
            public BucketEncryption() {}
        }
        public class ServerSideEncryptionRule {
            public ServerSideEncryptionByDefault ServerSideEncryptionByDefault { get; set; }
            public ServerSideEncryptionRule() {}
        }
        public class ServerSideEncryptionByDefault {
            public string KMSMasterKeyID { get; set; }
            public string SSEAlgorithm { get; set; }
            public ServerSideEncryptionByDefault() {}
        }
        public class CorsConfiguration {
            public string KMSMasterKeyID { get; set; }
            public string SSEAlgorithm { get; set; }
            public CorsConfiguration() {}
        }

    }

    public class BucketPolicyProperties : VaporShell.Core.ResourceProperties {
        public string Bucket { get; set; }
        public string PolicyDocument { get; set; }
        public BucketPolicyProperties() {}
        public BucketPolicyProperties(string Bucket, string PolicyDocument) {
            this.Bucket = Bucket;
            this.PolicyDocument = PolicyDocument;
        }
    }
    public class BucketPolicy : VaporShell.Core.Resource {
        public override string Type { get; set; } = "AWS::S3::BucketPolicy";
        public override ResourceProperties Properties { get; set; }

        public BucketPolicy() {}
        public BucketPolicy(string Bucket, string PolicyDocument) {
            this.Properties = new BucketPolicyProperties(Bucket, PolicyDocument);
        }
    }
}
