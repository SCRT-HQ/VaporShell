# Add-VSEventsRuleBatchArrayProperties

## SYNOPSIS
Adds an AWS::Events::Rule.BatchArrayProperties resource property to the template.
The array properties for the submitted job, such as the size of the array.
The array size can be between 2 and 10,000.
If you specify array properties for a job, it becomes an array job.
This parameter is used only if the target is an AWS Batch job.

## SYNTAX

```
Add-VSEventsRuleBatchArrayProperties [[-Size] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.BatchArrayProperties resource property to the template.
The array properties for the submitted job, such as the size of the array.
The array size can be between 2 and 10,000.
If you specify array properties for a job, it becomes an array job.
This parameter is used only if the target is an AWS Batch job.

## PARAMETERS

### -Size
The size of the array, if this is an array batch job.
Valid values are integers between 2 and 10,000.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batcharrayproperties.html#cfn-events-rule-batcharrayproperties-size
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

### Vaporshell.Resource.Events.Rule.BatchArrayProperties
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batcharrayproperties.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batcharrayproperties.html)

