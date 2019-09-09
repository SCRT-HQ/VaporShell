# Add-VSDMSEndpointElasticsearchSettings

## SYNOPSIS
Adds an AWS::DMS::Endpoint.ElasticsearchSettings resource property to the template.
## Syntax\<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax"\>\</a\>

## SYNTAX

```
Add-VSDMSEndpointElasticsearchSettings [[-EndpointUri] <Object>] [[-FullLoadErrorPercentage] <Int32>]
 [[-ErrorRetryDuration] <Int32>] [[-ServiceAccessRoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DMS::Endpoint.ElasticsearchSettings resource property to the template.
## Syntax\<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax"\>\</a\>

To declare this entity in your AWS CloudFormation template, use the following syntax:

### JSON\<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax.json"\>\</a\>



{

"EndpointUri: #cfn-dms-endpoint-elasticsearchsettings-endpointuri" : String,

"ErrorRetryDuration: #cfn-dms-endpoint-elasticsearchsettings-errorretryduration" : Integer,

"FullLoadErrorPercentage: #cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage" : Integer,

"ServiceAccessRoleArn: #cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn" : String

}



### YAML\<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax.yaml"\>\</a\>



EndpointUri: #cfn-dms-endpoint-elasticsearchsettings-endpointuri: String

ErrorRetryDuration: #cfn-dms-endpoint-elasticsearchsettings-errorretryduration: Integer

FullLoadErrorPercentage: #cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage: Integer

ServiceAccessRoleArn: #cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn: String



## Properties\<a name="aws-properties-dms-endpoint-elasticsearchsettings-properties"\>\</a\>

EndpointUri  \<a name="cfn-dms-endpoint-elasticsearchsettings-endpointuri"\>\</a\>

The endpoint for the ElasticSearch cluster.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

ErrorRetryDuration  \<a name="cfn-dms-endpoint-elasticsearchsettings-errorretryduration"\>\</a\>

The maximum number of seconds that DMS retries failed API requests to the Elasticsearch cluster.

*Required*: No

*Type*: Integer

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

FullLoadErrorPercentage  \<a name="cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage"\>\</a\>

The maximum percentage of records that can fail to be written before a full load operation stops.

*Required*: No

*Type*: Integer

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

ServiceAccessRoleArn  \<a name="cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn"\>\</a\>

The Amazon Resource Name (ARN used by service to access the IAM role.

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

### -EndpointUri
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-endpointuri
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

### -FullLoadErrorPercentage
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ErrorRetryDuration
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-errorretryduration
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServiceAccessRoleArn
*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn
PrimitiveType: String
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

### Vaporshell.Resource.DMS.Endpoint.ElasticsearchSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html)

