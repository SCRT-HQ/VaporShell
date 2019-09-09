# Add-VSDMSEndpointDynamoDbSettings

## SYNOPSIS
Adds an AWS::DMS::Endpoint.DynamoDbSettings resource property to the template.
## Syntax\<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax"\>\</a\>

## SYNTAX

```
Add-VSDMSEndpointDynamoDbSettings [[-ServiceAccessRoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DMS::Endpoint.DynamoDbSettings resource property to the template.
## Syntax\<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax"\>\</a\>

To declare this entity in your AWS CloudFormation template, use the following syntax:

### JSON\<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax.json"\>\</a\>



{

"ServiceAccessRoleArn: #cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn" : String

}



### YAML\<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax.yaml"\>\</a\>



ServiceAccessRoleArn: #cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn: String



## Properties\<a name="aws-properties-dms-endpoint-dynamodbsettings-properties"\>\</a\>

ServiceAccessRoleArn  \<a name="cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn"\>\</a\>

The Amazon Resource Name (ARN used by the service access IAM role.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ServiceAccessRoleArn
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html#cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DMS.Endpoint.DynamoDbSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html)

