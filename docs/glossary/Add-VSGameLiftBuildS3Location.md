# Add-VSGameLiftBuildS3Location

## SYNOPSIS
Adds an AWS::GameLift::Build.S3Location resource property to the template.
Location in Amazon Simple Storage Service (Amazon S3 where build files can be stored for access by Amazon GameLift.
For more details, see the Uploading a Build to Amazon GameLift: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html in the *Amazon GameLift Developer Guide*.

## SYNTAX

```
Add-VSGameLiftBuildS3Location [-Bucket] <Object> [-Key] <Object> [-RoleArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Build.S3Location resource property to the template.
Location in Amazon Simple Storage Service (Amazon S3 where build files can be stored for access by Amazon GameLift.
For more details, see the Uploading a Build to Amazon GameLift: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html in the *Amazon GameLift Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Bucket
Amazon S3 bucket identifier.
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
Name of the zip file containing the build files or script files.

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

### -RoleArn
Amazon Resource Name ARN: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html for an IAM role that allows Amazon GameLift to access the S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-rolearn
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.GameLift.Build.S3Location
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html)

