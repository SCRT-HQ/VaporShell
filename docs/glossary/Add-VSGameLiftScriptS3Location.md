# Add-VSGameLiftScriptS3Location

## SYNOPSIS
Adds an AWS::GameLift::Script.S3Location resource property to the template.
The location in Amazon S3 where build or script files can be stored for access by Amazon GameLift.

## SYNTAX

```
Add-VSGameLiftScriptS3Location [[-ObjectVersion] <Object>] [-Bucket] <Object> [-Key] <Object>
 [-RoleArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Script.S3Location resource property to the template.
The location in Amazon S3 where build or script files can be stored for access by Amazon GameLift.

## PARAMETERS

### -ObjectVersion
The version of the file, if object versioning is turned on for the bucket.
Amazon GameLift uses this information when retrieving files from an S3 bucket that you own.
Use this parameter to specify a specific version of the file.
If not set, the latest version of the file is retrieved.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-objectversion
PrimitiveType: String
UpdateType: Mutable

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

### -Bucket
An S3 bucket identifier.
This is the name of the S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-bucket
PrimitiveType: String
UpdateType: Mutable

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

### -Key
The name of the zip file that contains the build files or script files.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-key
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleArn
The Amazon Resource Name ARN: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html for an IAM role that allows Amazon GameLift to access the S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-rolearn
PrimitiveType: String
UpdateType: Mutable

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

### Vaporshell.Resource.GameLift.Script.S3Location
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html)

