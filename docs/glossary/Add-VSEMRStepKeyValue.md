# Add-VSEMRStepKeyValue

## SYNOPSIS
Adds an AWS::EMR::Step.KeyValue resource property to the template.
KeyValue is a subproperty of the HadoopJarStepConfig property type.
KeyValue is used to pass parameters to a step.

## SYNTAX

```
Add-VSEMRStepKeyValue [[-Key] <Object>] [[-Value] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Step.KeyValue resource property to the template.
KeyValue is a subproperty of the HadoopJarStepConfig property type.
KeyValue is used to pass parameters to a step.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Key
The unique identifier of a key value pair.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html#cfn-elasticmapreduce-step-keyvalue-key
PrimitiveType: String
UpdateType: Immutable

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
The value part of the identified key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html#cfn-elasticmapreduce-step-keyvalue-value
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.EMR.Step.KeyValue
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html)

