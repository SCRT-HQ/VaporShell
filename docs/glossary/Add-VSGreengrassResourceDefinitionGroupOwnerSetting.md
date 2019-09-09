# Add-VSGreengrassResourceDefinitionGroupOwnerSetting

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinition.GroupOwnerSetting resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinition-groupownersetting-description"\>\</a\>Settings that define additional Linux OS group permissions to give to the Lambda function process.
You can give the permissions of the Linux group that owns the resource or choose another Linux group.
These permissions are in addition to the function's RunAs permissions.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionGroupOwnerSetting [-AutoAddGroupOwner] <Boolean> [[-GroupOwner] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinition.GroupOwnerSetting resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinition-groupownersetting-description"\>\</a\>Settings that define additional Linux OS group permissions to give to the Lambda function process.
You can give the permissions of the Linux group that owns the resource or choose another Linux group.
These permissions are in addition to the function's RunAs permissions.

\<a name="aws-properties-greengrass-resourcedefinition-groupownersetting-inheritance"\>\</a\> In an AWS CloudFormation template, GroupOwnerSetting is a property of the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html and https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html property types.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AutoAddGroupOwner
Indicates whether to give the privileges of the Linux group that owns the resource to the Lambda process.
This gives the Lambda process the file access permissions of the Linux group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-autoaddgroupowner
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupOwner
The name of the Linux group whose privileges you want to add to the Lambda process.
This value is ignored if AutoAddGroupOwner is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-groupowner
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.Greengrass.ResourceDefinition.GroupOwnerSetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html)

