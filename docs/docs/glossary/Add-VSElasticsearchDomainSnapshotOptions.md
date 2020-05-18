# Add-VSElasticsearchDomainSnapshotOptions

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.SnapshotOptions resource property to the template.
The automated snapshot configuration for the Amazon ES domain indices.

## SYNTAX

```
Add-VSElasticsearchDomainSnapshotOptions [[-AutomatedSnapshotStartHour] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.SnapshotOptions resource property to the template.
The automated snapshot configuration for the Amazon ES domain indices.

## PARAMETERS

### -AutomatedSnapshotStartHour
The hour in UTC during which the service takes an automated daily snapshot of the indices in the Amazon ES domain.
For example, if you specify 0, Amazon ES takes an automated snapshot everyday between midnight and 1 am.
You can specify a value between 0 and 23.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html#cfn-elasticsearch-domain-snapshotoptions-automatedsnapshotstarthour
PrimitiveType: Integer
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

### Vaporshell.Resource.Elasticsearch.Domain.SnapshotOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html)

