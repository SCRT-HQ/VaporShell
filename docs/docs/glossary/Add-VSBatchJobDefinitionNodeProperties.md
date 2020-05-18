# Add-VSBatchJobDefinitionNodeProperties

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.NodeProperties resource property to the template.
An object representing the node properties of a multi-node parallel job.

## SYNTAX

```
Add-VSBatchJobDefinitionNodeProperties [-MainNode] <Object> [-NodeRangeProperties] <Object>
 [-NumNodes] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.NodeProperties resource property to the template.
An object representing the node properties of a multi-node parallel job.

## PARAMETERS

### -MainNode
Specifies the node index for the main node of a multi-node parallel job.
This node index value must be fewer than the number of nodes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-mainnode
PrimitiveType: Integer
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

### -NodeRangeProperties
A list of node ranges and their properties associated with a multi-node parallel job.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-noderangeproperties
ItemType: NodeRangeProperty
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

### -NumNodes
The number of nodes associated with a multi-node parallel job.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-numnodes
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.JobDefinition.NodeProperties
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html)

