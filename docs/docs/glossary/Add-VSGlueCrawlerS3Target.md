# Add-VSGlueCrawlerS3Target

## SYNOPSIS
Adds an AWS::Glue::Crawler.S3Target resource property to the template.
Specifies a data store in Amazon Simple Storage Service (Amazon S3.

## SYNTAX

```
Add-VSGlueCrawlerS3Target [[-Path] <Object>] [[-Exclusions] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Crawler.S3Target resource property to the template.
Specifies a data store in Amazon Simple Storage Service (Amazon S3.

## PARAMETERS

### -Path
The path to the Amazon S3 target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html#cfn-glue-crawler-s3target-path
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

### -Exclusions
A list of glob patterns used to exclude from the crawl.
For more information, see Catalog Tables with a Crawler: https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html#cfn-glue-crawler-s3target-exclusions
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

### Vaporshell.Resource.Glue.Crawler.S3Target
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html)

