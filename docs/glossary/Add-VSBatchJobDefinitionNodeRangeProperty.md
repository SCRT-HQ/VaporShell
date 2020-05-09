# Add-VSBatchJobDefinitionNodeRangeProperty

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.NodeRangeProperty resource property to the template.
An object representing the properties of the node range for a multi-node parallel job.

## SYNTAX

```
Add-VSBatchJobDefinitionNodeRangeProperty [[-Container] <Object>] [-TargetNodes] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.NodeRangeProperty resource property to the template.
An object representing the properties of the node range for a multi-node parallel job.

## PARAMETERS

### -Container
The container details for the node range.

Type: ContainerProperties
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html#cfn-batch-jobdefinition-noderangeproperty-container
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

### -TargetNodes
The range of nodes, using node index values.
A range of 0:3 indicates nodes with index values of 0 through 3.
If the starting range value is omitted :n, then 0 is used to start the range.
If the ending range value is omitted n:, then the highest possible node index is used to end the range.
Your accumulative node ranges must account for all nodes 0:n.
You may nest node ranges, for example 0:10 and 4:5, in which case the 4:5 range properties override the 0:10 properties.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html#cfn-batch-jobdefinition-noderangeproperty-targetnodes
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

### Vaporshell.Resource.Batch.JobDefinition.NodeRangeProperty
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html)

