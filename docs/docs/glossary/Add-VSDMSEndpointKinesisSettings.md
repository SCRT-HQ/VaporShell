# Add-VSDMSEndpointKinesisSettings

## SYNOPSIS
Adds an AWS::DMS::Endpoint.KinesisSettings resource property to the template.
Provides information that describes an Amazon Kinesis Data Stream endpoint.
This information includes the output format of records applied to the endpoint and details of transaction and control table data information.

## SYNTAX

```
Add-VSDMSEndpointKinesisSettings [[-MessageFormat] <Object>] [[-StreamArn] <Object>]
 [[-ServiceAccessRoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DMS::Endpoint.KinesisSettings resource property to the template.
Provides information that describes an Amazon Kinesis Data Stream endpoint.
This information includes the output format of records applied to the endpoint and details of transaction and control table data information.

## PARAMETERS

### -MessageFormat
The output format for the records created on the endpoint.
The message format is JSON default or JSON_UNFORMATTED a single line with no tab.

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
The Amazon Resource Name ARN for the Amazon Kinesis Data Streams endpoint.

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
The Amazon Resource Name ARN for the AWS Identity and Access Management IAM role that AWS DMS uses to write to the Kinesis data stream.

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

