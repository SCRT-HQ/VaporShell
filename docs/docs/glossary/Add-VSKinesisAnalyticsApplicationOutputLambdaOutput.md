# Add-VSKinesisAnalyticsApplicationOutputLambdaOutput

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationOutput.LambdaOutput resource property to the template.
When configuring application output, identifies an AWS Lambda function as the destination.
You provide the function Amazon Resource Name (ARN and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the function on your behalf.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationOutputLambdaOutput [-ResourceARN] <Object> [-RoleARN] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationOutput.LambdaOutput resource property to the template.
When configuring application output, identifies an AWS Lambda function as the destination.
You provide the function Amazon Resource Name (ARN and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the function on your behalf.

## PARAMETERS

### -ResourceARN
Amazon Resource Name ARN of the destination Lambda function to write to.
To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN.
For more information about Lambda ARNs, see Example ARNs: AWS Lambda: /general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-resourcearn
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

### -RoleARN
ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf.
You need to grant the necessary permissions to this role.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-rolearn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.LambdaOutput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html)

