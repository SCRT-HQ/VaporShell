# Add-VSSyntheticsCanaryCode

## SYNOPSIS
Adds an AWS::Synthetics::Canary.Code resource property to the template.
Use this structure to input your script code for the canary.
This structure contains the Lambda handler with the location where the canary should start running the script.
If the script is stored in an S3 bucket, the bucket name, key, and version are also included.
If the script is passed into the canary directly, the script code is contained in the value of Script.

## SYNTAX

```
Add-VSSyntheticsCanaryCode [[-S3Bucket] <Object>] [[-S3Key] <Object>] [[-S3ObjectVersion] <Object>]
 [[-Script] <Object>] [[-Handler] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Synthetics::Canary.Code resource property to the template.
Use this structure to input your script code for the canary.
This structure contains the Lambda handler with the location where the canary should start running the script.
If the script is stored in an S3 bucket, the bucket name, key, and version are also included.
If the script is passed into the canary directly, the script code is contained in the value of Script.

## PARAMETERS

### -S3Bucket
If your canary script is located in S3, specify the full bucket name here.
The bucket must already exist.
Specify the full bucket name, including s3:// as the start of the bucket name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3bucket
UpdateType: Mutable
PrimitiveType: String

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

### -S3Key
The S3 key of your script.
For more information, see Working with Amazon S3 Objects: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingObjects.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3key
UpdateType: Mutable
PrimitiveType: String

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

### -S3ObjectVersion
The S3 version ID of your script.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3objectversion
UpdateType: Mutable
PrimitiveType: String

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

### -Script
If you input your canary script directly into the canary instead of referring to an S3 location, the value of this parameter is the script in plain text.
It can be up to 5 MB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-script
UpdateType: Mutable
PrimitiveType: String

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

### -Handler
The entry point to use for the source code when running the canary.
This value must end with the string .handler.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-handler
UpdateType: Mutable
PrimitiveType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Synthetics.Canary.Code
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html)

