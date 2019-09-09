# Add-VSApiGatewayDeploymentAccessLogSetting

## SYNOPSIS
Adds an AWS::ApiGateway::Deployment.AccessLogSetting resource property to the template.
The AccessLogSetting property type specifies settings for logging access in this stage.

## SYNTAX

```
Add-VSApiGatewayDeploymentAccessLogSetting [[-DestinationArn] <Object>] [[-Format] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::Deployment.AccessLogSetting resource property to the template.
The AccessLogSetting property type specifies settings for logging access in this stage.

AccessLogSetting is a property of the StageDescription: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DestinationArn
The Amazon Resource Name ARN of the CloudWatch Logs log group to receive access logs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html#cfn-apigateway-deployment-accesslogsetting-destinationarn
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

### -Format
A single line format of the access logs of data, as specified by selected $context variables: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference.
The format must include at least $context.requestId.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html#cfn-apigateway-deployment-accesslogsetting-format
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGateway.Deployment.AccessLogSetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html)

