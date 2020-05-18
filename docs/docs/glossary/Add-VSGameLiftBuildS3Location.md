# Add-VSGameLiftBuildS3Location

## SYNOPSIS
Adds an AWS::GameLift::Build.S3Location resource property to the template.
The location in Amazon S3 where build or script files are stored for access by Amazon GameLift.

## SYNTAX

```
Add-VSGameLiftBuildS3Location [-Bucket] <Object> [-Key] <Object> [[-ObjectVersion] <Object>]
 [-RoleArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Build.S3Location resource property to the template.
The location in Amazon S3 where build or script files are stored for access by Amazon GameLift.

## PARAMETERS

### -Bucket
An S3 bucket identifier.
This is the name of the S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-bucket
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Key
The name of the zip file that contains the build files or script files.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-key
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectVersion
The version of the file, if object versioning is turned on for the bucket.
Amazon GameLift uses this information when retrieving files from your S3 bucket.
To retrieve a specific version of the file, provide an object version.
To retrieve the latest version of the file, do not set this parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-object-verison
PrimitiveType: String
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

### -RoleArn
The Amazon Resource Name ARN: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html for an IAM role that allows Amazon GameLift to access the S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-rolearn
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.GameLift.Build.S3Location
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html)

