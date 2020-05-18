# Add-VSBatchJobDefinitionResourceRequirement

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.ResourceRequirement resource property to the template.
The type and amount of a resource to assign to a container.
Currently, the only supported resource type is GPU.

## SYNTAX

```
Add-VSBatchJobDefinitionResourceRequirement [[-Type] <Object>] [[-Value] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.ResourceRequirement resource property to the template.
The type and amount of a resource to assign to a container.
Currently, the only supported resource type is GPU.

## PARAMETERS

### -Type
The type of resource to assign to a container.
Currently, the only supported resource type is GPU.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-type
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

### -Value
The number of physical GPUs to reserve for the container.
The number of GPUs reserved for all containers in a job should not exceed the number of available GPUs on the compute resource that the job is launched on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-value
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.JobDefinition.ResourceRequirement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html)

