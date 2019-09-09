# Add-VSDMSEndpointKinesisSettings

## SYNOPSIS
Adds an AWS::DMS::Endpoint.KinesisSettings resource property to the template.
## Syntax\<a name="aws-properties-dms-endpoint-kinesissettings-syntax"\>\</a\>

## SYNTAX

```
Add-VSDMSEndpointKinesisSettings [[-MessageFormat] <Object>] [[-StreamArn] <Object>]
 [[-ServiceAccessRoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DMS::Endpoint.KinesisSettings resource property to the template.
## Syntax\<a name="aws-properties-dms-endpoint-kinesissettings-syntax"\>\</a\>

To declare this entity in your AWS CloudFormation template, use the following syntax:

### JSON\<a name="aws-properties-dms-endpoint-kinesissettings-syntax.json"\>\</a\>



{

"MessageFormat: #cfn-dms-endpoint-kinesissettings-messageformat" : String,

"ServiceAccessRoleArn: #cfn-dms-endpoint-kinesissettings-serviceaccessrolearn" : String,

"StreamArn: #cfn-dms-endpoint-kinesissettings-streamarn" : String

}



### YAML\<a name="aws-properties-dms-endpoint-kinesissettings-syntax.yaml"\>\</a\>



MessageFormat: #cfn-dms-endpoint-kinesissettings-messageformat: String

ServiceAccessRoleArn: #cfn-dms-endpoint-kinesissettings-serviceaccessrolearn: String

StreamArn: #cfn-dms-endpoint-kinesissettings-streamarn: String



## Properties\<a name="aws-properties-dms-endpoint-kinesissettings-properties"\>\</a\>

MessageFormat  \<a name="cfn-dms-endpoint-kinesissettings-messageformat"\>\</a\>

The output format for the records created on the endpoint.
The message format is JSON.

*Required*: No

*Type*: String

*Allowed Values*: json

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

ServiceAccessRoleArn  \<a name="cfn-dms-endpoint-kinesissettings-serviceaccessrolearn"\>\</a\>

The Amazon Resource Name (ARN for the IAM role that DMS uses to write to the Amazon Kinesis data stream.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

StreamArn  \<a name="cfn-dms-endpoint-kinesissettings-streamarn"\>\</a\>

The Amazon Resource Name (ARN for the Amazon Kinesis Data Streams endpoint.

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

### -MessageFormat
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-messageformat
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

### -StreamArn
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-streamarn
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

### -ServiceAccessRoleArn
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-serviceaccessrolearn
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

### Vaporshell.Resource.DMS.Endpoint.KinesisSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html)

