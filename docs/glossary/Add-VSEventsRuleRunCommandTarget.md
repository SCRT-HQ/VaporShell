# Add-VSEventsRuleRunCommandTarget

## SYNOPSIS
Adds an AWS::Events::Rule.RunCommandTarget resource property to the template.
The RunCommandTarget property type specifies information about the Amazon EC2 instances that the Run Command is sent to.
A RunCommandTarget block can include only one key, but the key can specify multiple values.

## SYNTAX

```
Add-VSEventsRuleRunCommandTarget [-Key] <Object> [-Values] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.RunCommandTarget resource property to the template.
The RunCommandTarget property type specifies information about the Amazon EC2 instances that the Run Command is sent to.
A RunCommandTarget block can include only one key, but the key can specify multiple values.

RunCommandTarget is a property of the RunCommandParameters: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html property type.

Information about the EC2 instances that are to be sent the command, specified as key-value pairs.
Each RunCommandTarget block can include only one key, but this key may specify multiple values.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Key
Can be either tag: *tag-key* or InstanceIds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-key
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

### -Values
If Key is tag: *tag-key*, Values is a list of tag values.
If Key is InstanceIds, Values is a list of Amazon EC2 instance IDs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-values
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.Events.Rule.RunCommandTarget
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html)

