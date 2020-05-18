# Add-VSApiGatewayStageCanarySetting

## SYNOPSIS
Adds an AWS::ApiGateway::Stage.CanarySetting resource property to the template.
The CanarySetting property type specifies settings for the canary deployment in this stage.

## SYNTAX

```
Add-VSApiGatewayStageCanarySetting [[-DeploymentId] <Object>] [[-PercentTraffic] <Object>]
 [[-StageVariableOverrides] <Hashtable>] [[-UseStageCache] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::Stage.CanarySetting resource property to the template.
The CanarySetting property type specifies settings for the canary deployment in this stage.

CanarySetting is a property of the AWS::ApiGateway::Stage: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html resource.

## PARAMETERS

### -DeploymentId
The identifier of the deployment that the stage points to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-deploymentid
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

### -PercentTraffic
The percentage 0-100 of traffic diverted to a canary deployment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-percenttraffic
PrimitiveType: Double
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

### -StageVariableOverrides
Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary.
These stage variables are represented as a string-to-string map between stage variable names and their values.
Duplicates are not allowed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-stagevariableoverrides
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseStageCache
Whether the canary deployment uses the stage cache or not.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-usestagecache
PrimitiveType: Boolean
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGateway.Stage.CanarySetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html)

