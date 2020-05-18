# Add-VSAppConfigDeploymentTags

## SYNOPSIS
Adds an AWS::AppConfig::Deployment.Tags resource property to the template.
Metadata to assign to the deployment strategy.
Tags help organize and categorize your AppConfig resources.
Each tag consists of a key and an optional value, both of which you define.

## SYNTAX

```
Add-VSAppConfigDeploymentTags [[-Value] <Object>] [[-Key] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppConfig::Deployment.Tags resource property to the template.
Metadata to assign to the deployment strategy.
Tags help organize and categorize your AppConfig resources.
Each tag consists of a key and an optional value, both of which you define.

## PARAMETERS

### -Value
The tag value can be up to 256 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-tags.html#cfn-appconfig-deployment-tags-value
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

### -Key
The key-value string map.
The valid character set is a-zA-Z+-=._:/\].
The tag key can be up to 128 characters and must not start with aws:.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-tags.html#cfn-appconfig-deployment-tags-key
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

### Vaporshell.Resource.AppConfig.Deployment.Tags
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-tags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-tags.html)

