# Add-VSS3BucketLambdaConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.LambdaConfiguration resource property to the template.
Describes the AWS Lambda functions to invoke and the events for which to invoke them.

## SYNTAX

```
Add-VSS3BucketLambdaConfiguration [-Event] <Object> [[-Filter] <Object>] [-Function] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.LambdaConfiguration resource property to the template.
Describes the AWS Lambda functions to invoke and the events for which to invoke them.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Event
The Amazon S3 bucket event for which to invoke the AWS Lambda function.
For more information, see Supported Event Types: https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-event
PrimitiveType: String
UpdateType: Mutable

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

### -Filter
The filtering rules that determine which objects invoke the AWS Lambda function.
For example, you can create a filter so that only image files with a .jpg extension invoke the function when they are added to the Amazon S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-filter
Type: NotificationFilter
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

### -Function
The Amazon Resource Name ARN of the AWS Lambda function that Amazon S3 invokes when the specified event type occurs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-function
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.LambdaConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html)

