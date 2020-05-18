# Add-VSGlueCrawlerTargets

## SYNOPSIS
Adds an AWS::Glue::Crawler.Targets resource property to the template.
Specifies data stores to crawl.

## SYNTAX

```
Add-VSGlueCrawlerTargets [[-S3Targets] <Object>] [[-CatalogTargets] <Object>] [[-JdbcTargets] <Object>]
 [[-DynamoDBTargets] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Crawler.Targets resource property to the template.
Specifies data stores to crawl.

## PARAMETERS

### -S3Targets
Specifies Amazon Simple Storage Service Amazon S3 targets.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-s3targets
ItemType: S3Target
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

### -CatalogTargets
Specifies AWS Glue Data Catalog targets.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-catalogtargets
ItemType: CatalogTarget
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

### -JdbcTargets
Specifies JDBC targets.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-jdbctargets
ItemType: JdbcTarget
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

### -DynamoDBTargets
Specifies Amazon DynamoDB targets.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-dynamodbtargets
ItemType: DynamoDBTarget
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

### Vaporshell.Resource.Glue.Crawler.Targets
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html)

