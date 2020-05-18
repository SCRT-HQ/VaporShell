# Add-VSCodePipelineCustomActionTypeConfigurationProperties

## SYNOPSIS
Adds an AWS::CodePipeline::CustomActionType.ConfigurationProperties resource property to the template.
The configuration properties for the custom action.

## SYNTAX

```
Add-VSCodePipelineCustomActionTypeConfigurationProperties [[-Description] <Object>] [-Key] <Object>
 [-Name] <Object> [[-Queryable] <Object>] [-Required] <Object> [-Secret] <Object> [[-Type] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::CustomActionType.ConfigurationProperties resource property to the template.
The configuration properties for the custom action.

**Note**

You can refer to a name in the configuration properties of the custom action within the URL templates by following the format of {Config:name}, as long as the configuration property is both required and not secret.
For more information, see Create a Custom Action for a Pipeline: https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html.

## PARAMETERS

### -Description
The description of the action configuration property that is displayed to users.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-description
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
Whether the configuration property is a key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-key
PrimitiveType: Boolean
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

### -Name
The name of the action configuration property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-name
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

### -Queryable
Indicates that the property is used with PollForJobs.
When creating a custom action, an action can have up to one queryable property.
If it has one, that property must be both required and not secret.
If you create a pipeline with a custom action type, and that custom action contains a queryable property, the value for that configuration property is subject to other restrictions.
The value must be less than or equal to twenty 20 characters.
The value can contain only alphanumeric characters, underscores, and hyphens.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-queryable
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

### -Required
Whether the configuration property is a required value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-required
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Secret
Whether the configuration property is secret.
Secrets are hidden from all calls except for GetJobDetails, GetThirdPartyJobDetails, PollForJobs, and PollForThirdPartyJobs.
When updating a pipeline, passing * * * * * without changing any other values of the action preserves the previous value of the secret.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-secret
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The type of the configuration property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-type
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodePipeline.CustomActionType.ConfigurationProperties
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html)

