# Add-VSElasticsearchDomainLogPublishingOption

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.LogPublishingOption resource property to the template.
Specifies whether the Amazon ES domain publishes the Elasticsearch application and slow logs to Amazon CloudWatch.
You still have to enable the *collection* of slow logs using the Elasticsearch REST API.
To learn more, see Setting Elasticsearch Logging Thresholds for Slow Logs: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-slow-logs-indices.

## SYNTAX

```
Add-VSElasticsearchDomainLogPublishingOption [[-CloudWatchLogsLogGroupArn] <Object>] [[-Enabled] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.LogPublishingOption resource property to the template.
Specifies whether the Amazon ES domain publishes the Elasticsearch application and slow logs to Amazon CloudWatch.
You still have to enable the *collection* of slow logs using the Elasticsearch REST API.
To learn more, see Setting Elasticsearch Logging Thresholds for Slow Logs: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-slow-logs-indices.

## PARAMETERS

### -CloudWatchLogsLogGroupArn
Specifies the CloudWatch log group to publish to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html#cfn-elasticsearch-domain-logpublishingoption-cloudwatchlogsloggrouparn
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

### -Enabled
If true, enables the publishing of logs to CloudWatch.
Default: false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html#cfn-elasticsearch-domain-logpublishingoption-enabled
PrimitiveType: Boolean
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

### Vaporshell.Resource.Elasticsearch.Domain.LogPublishingOption
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html)

