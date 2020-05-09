# Add-VSAppSyncDataSourceElasticsearchConfig

## SYNOPSIS
Adds an AWS::AppSync::DataSource.ElasticsearchConfig resource property to the template.
The ElasticsearchConfig property type specifies the AwsRegion and Endpoints for an Amazon Elasticsearch Service domain in your account for an AWS AppSync data source.

## SYNTAX

```
Add-VSAppSyncDataSourceElasticsearchConfig [-AwsRegion] <Object> [-Endpoint] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::DataSource.ElasticsearchConfig resource property to the template.
The ElasticsearchConfig property type specifies the AwsRegion and Endpoints for an Amazon Elasticsearch Service domain in your account for an AWS AppSync data source.

ElasticsearchConfig is a property of the AWS::AppSync::DataSource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html property type.

## PARAMETERS

### -AwsRegion
The AWS Region.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-awsregion
PrimitiveType: String
UpdateType: Mutable

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

### -Endpoint
The endpoint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-endpoint
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppSync.DataSource.ElasticsearchConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html)

