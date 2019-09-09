# Add-VSApiGatewayApiKeyStageKey

## SYNOPSIS
Adds an AWS::ApiGateway::ApiKey.StageKey resource property to the template.
StageKey is a property of the AWS::ApiGateway::ApiKey: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html resource that specifies the stage to associate with the API key.
This association allows only clients with the key to make requests to methods in that stage.

## SYNTAX

```
Add-VSApiGatewayApiKeyStageKey [[-RestApiId] <Object>] [[-StageName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::ApiKey.StageKey resource property to the template.
StageKey is a property of the AWS::ApiGateway::ApiKey: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html resource that specifies the stage to associate with the API key.
This association allows only clients with the key to make requests to methods in that stage.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RestApiId
The ID of a RestApi resource that includes the stage with which you want to associate the API key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html#cfn-apigateway-apikey-stagekey-restapiid
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

### -StageName
The name of the stage with which to associate the API key.
The stage must be included in the RestApi resource that you specified in the RestApiId property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html#cfn-apigateway-apikey-stagekey-stagename
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

### Vaporshell.Resource.ApiGateway.ApiKey.StageKey
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html)

