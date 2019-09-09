# Add-VSEventsRuleSqsParameters

## SYNOPSIS
Adds an AWS::Events::Rule.SqsParameters resource property to the template.
The SqsParameters property type specifies the custom parameter to be used when the target is an Amazon SQS FIFO queue.

## SYNTAX

```
Add-VSEventsRuleSqsParameters [-MessageGroupId] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.SqsParameters resource property to the template.
The SqsParameters property type specifies the custom parameter to be used when the target is an Amazon SQS FIFO queue.

SqsParameters is a property of the Target: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MessageGroupId
The FIFO message group ID to use as the target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html#cfn-events-rule-sqsparameters-messagegroupid
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Events.Rule.SqsParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html)

