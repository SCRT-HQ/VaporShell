# Add-VSApiGatewayDeploymentDeploymentCanarySettings

## SYNOPSIS
Adds an AWS::ApiGateway::Deployment.DeploymentCanarySettings resource property to the template.
The DeploymentCanarySettings property type specifies settings for the canary deployment.

## SYNTAX

```
Add-VSApiGatewayDeploymentDeploymentCanarySettings [[-PercentTraffic] <Object>]
 [[-StageVariableOverrides] <Hashtable>] [[-UseStageCache] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::Deployment.DeploymentCanarySettings resource property to the template.
The DeploymentCanarySettings property type specifies settings for the canary deployment.

## PARAMETERS

### -PercentTraffic
The percentage 0-100 of traffic diverted to a canary deployment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-percenttraffic
PrimitiveType: Double
UpdateType: Immutable

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

### -StageVariableOverrides
Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary.
These stage variables are represented as a string-to-string map between stage variable names and their values.
Duplicates are not allowed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-stagevariableoverrides
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Immutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseStageCache
Whether the canary deployment uses the stage cache.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-usestagecache
PrimitiveType: Boolean
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGateway.Deployment.DeploymentCanarySettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html)

