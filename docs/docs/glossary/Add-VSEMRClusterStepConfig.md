# Add-VSEMRClusterStepConfig

## SYNOPSIS
Adds an AWS::EMR::Cluster.StepConfig resource property to the template.
StepConfig is a property of the AWS::EMR::Cluster resource.
The StepConfig property type specifies a cluster (job flow step, which runs only on the master node.
Steps are used to submit data processing jobs to the cluster.

## SYNTAX

```
Add-VSEMRClusterStepConfig [[-ActionOnFailure] <Object>] [-HadoopJarStep] <Object> [-Name] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.StepConfig resource property to the template.
StepConfig is a property of the AWS::EMR::Cluster resource.
The StepConfig property type specifies a cluster (job flow step, which runs only on the master node.
Steps are used to submit data processing jobs to the cluster.

## PARAMETERS

### -ActionOnFailure
The action to take when the cluster step fails.
Possible values are CANCEL_AND_WAIT and CONTINUE.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html#cfn-elasticmapreduce-cluster-stepconfig-actiononfailure
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

### -HadoopJarStep
The JAR file used for the step.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html#cfn-elasticmapreduce-cluster-stepconfig-hadoopjarstep
Type: HadoopJarStepConfig
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

### -Name
The name of the step.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html#cfn-elasticmapreduce-cluster-stepconfig-name
PrimitiveType: String
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

### Vaporshell.Resource.EMR.Cluster.StepConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html)

