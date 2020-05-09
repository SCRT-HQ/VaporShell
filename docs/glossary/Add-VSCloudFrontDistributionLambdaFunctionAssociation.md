# Add-VSCloudFrontDistributionLambdaFunctionAssociation

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.LambdaFunctionAssociation resource property to the template.
A complex type that contains a Lambda function association.

## SYNTAX

```
Add-VSCloudFrontDistributionLambdaFunctionAssociation [[-IncludeBody] <Object>] [[-EventType] <Object>]
 [[-LambdaFunctionARN] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.LambdaFunctionAssociation resource property to the template.
A complex type that contains a Lambda function association.

## PARAMETERS

### -IncludeBody
A flag that allows a Lambda function to have read access to the body content.
For more information, see Accessing the Request Body by Choosing the Include Body Option: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html in the Amazon CloudFront Developer Guide.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-includebody
PrimitiveType: Boolean
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

### -EventType
Specifies the event type that triggers a Lambda function invocation.
You can specify the following values:
+  viewer-request: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache.
+  origin-request: The function executes only when CloudFront forwards a request to your origin.
When the requested object is in the edge cache, the function doesn't execute.
+  origin-response: The function executes after CloudFront receives a response from the origin and before it caches the object in the response.
When the requested object is in the edge cache, the function doesn't execute.
+  viewer-response: The function executes before CloudFront returns the requested object to the viewer.
The function executes regardless of whether the object was already in the edge cache.
If the origin returns an HTTP status code other than HTTP 200 OK, the function doesn't execute.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-eventtype
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

### -LambdaFunctionARN
The ARN of the Lambda function.
You must specify the ARN of a function version; you can't specify a Lambda alias or $LATEST.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-lambdafunctionarn
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.LambdaFunctionAssociation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html)

