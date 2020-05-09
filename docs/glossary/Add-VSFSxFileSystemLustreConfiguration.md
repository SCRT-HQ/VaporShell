# Add-VSFSxFileSystemLustreConfiguration

## SYNOPSIS
Adds an AWS::FSx::FileSystem.LustreConfiguration resource property to the template.
The configuration for the Amazon FSx for Lustre file system.

## SYNTAX

```
Add-VSFSxFileSystemLustreConfiguration [[-ImportPath] <Object>] [[-WeeklyMaintenanceStartTime] <Object>]
 [[-ImportedFileChunkSize] <Object>] [[-DeploymentType] <Object>] [[-ExportPath] <Object>]
 [[-PerUnitStorageThroughput] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::FSx::FileSystem.LustreConfiguration resource property to the template.
The configuration for the Amazon FSx for Lustre file system.

## PARAMETERS

### -ImportPath
Optional The path to the Amazon S3 bucket including the optional prefix that you're using as the data repository for your Amazon FSx for Lustre file system.
The root of your FSx for Lustre file system will be mapped to the root of the Amazon S3 bucket you select.
An example is s3://import-bucket/optional-prefix.
If you specify a prefix after the Amazon S3 bucket name, only object keys with that prefix are loaded into the file system.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importpath
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WeeklyMaintenanceStartTime
The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-weeklymaintenancestarttime
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImportedFileChunkSize
Optional For files imported from a data repository, this value determines the stripe count and maximum amount of data per file in MiB stored on a single physical disk.
The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
The default chunk size is 1,024 MiB 1 GiB and can go as high as 512,000 MiB 500 GiB.
Amazon S3 objects have a maximum size of 5 TB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importedfilechunksize
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeploymentType
Optional Choose SCRATCH_1 and SCRATCH_2 deployment types when you need temporary storage and shorter-term processing of data.
The SCRATCH_2 deployment type provides in-transit encryption of data and higher burst throughput capacity than SCRATCH_1.
Choose PERSISTENT_1 deployment type for longer-term storage and workloads and encryption of data in transit.
To learn more about deployment types, see  FSx for Lustre Deployment Options: https://docs.aws.amazon.com/fsx/latest/LustreGuide/lustre-deployment-types.html.
Encryption of data in-transit is automatically enabled when you access a SCRATCH_2 or PERSISTENT_1 file system from Amazon EC2 instances that support this feature: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/data-                 protection.html.
Default = SCRATCH_1
Encryption of data in-transit for SCRATCH_2 and PERSISTENT_1 deployment types is supported when accessed from supported instance types in supported AWS Regions.
To learn more, Encrypting Data in Transit: https://docs.aws.amazon.com/fsx/latest/LustreGuide/encryption-in-transit-fsxl.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-deploymenttype
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExportPath
Optional The path in Amazon S3 where the root of your Amazon FSx file system is exported.
The path must use the same Amazon S3 bucket as specified in ImportPath.
You can provide an optional prefix to which new and changed data is to be exported from your Amazon FSx for Lustre file system.
If an ExportPath value is not provided, Amazon FSx sets a default export path, s3://import-bucket/FSxLustrecreation-timestamp\].
The timestamp is in UTC format, for example s3://import-bucket/FSxLustre20181105T222312Z.
The Amazon S3 export bucket must be the same as the import bucket specified by ImportPath.
If you only specify a bucket name, such as s3://import-bucket, you get a 1:1 mapping of file system objects to S3 bucket objects.
This mapping means that the input data in S3 is overwritten on export.
If you provide a custom prefix in the export path, such as s3://import-bucket/custom-optional-prefix\], Amazon FSx exports the contents of your file system to that export prefix in the Amazon S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-exportpath
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PerUnitStorageThroughput
Required for the PERSISTENT_1 deployment type, describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB.
File system throughput capacity is calculated by multiplying ﬁle system storage capacity TiB by the PerUnitStorageThroughput MB/s/TiB.
For a 2.4 TiB ﬁle system, provisioning 50 MB/s/TiB of PerUnitStorageThroughput yields 117 MB/s of ﬁle system throughput.
You pay for the amount of throughput that you provision.
Valid values are 50, 100, 200.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-perunitstoragethroughput
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.FSx.FileSystem.LustreConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html)

