# Add-VSGreengrassResourceDefinitionResourceDownloadOwnerSetting

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinition.ResourceDownloadOwnerSetting resource property to the template.
The owner setting for a downloaded machine learning resource.
For more information, see Access Machine Learning Resources from Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-ml-resources.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionResourceDownloadOwnerSetting [-GroupOwner] <Object>
 [-GroupPermission] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinition.ResourceDownloadOwnerSetting resource property to the template.
The owner setting for a downloaded machine learning resource.
For more information, see Access Machine Learning Resources from Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-ml-resources.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting-inheritance"\>\</a\> In an AWS CloudFormation template, ResourceDownloadOwnerSetting is the property type of the OwnerSetting property for the  S3MachineLearningModelResourceData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html and  SageMakerMachineLearningModelResourceData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html property types.

## PARAMETERS

### -GroupOwner
The group owner of the machine learning resource.
This is the group ID GID of an existing Linux OS group on the system.
The group's permissions are added to the Lambda process.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinition-resourcedownloadownersetting-groupowner
PrimitiveType: String
UpdateType: Immutable

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

### -GroupPermission
The permissions that the group owner has to the machine learning resource.
Valid values are rw read-write or ro read-only.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinition-resourcedownloadownersetting-grouppermission
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDownloadOwnerSetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting.html)

