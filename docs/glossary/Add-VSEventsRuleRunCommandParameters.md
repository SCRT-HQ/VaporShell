# Add-VSEventsRuleRunCommandParameters

## SYNOPSIS
Adds an AWS::Events::Rule.RunCommandParameters resource property to the template.
The RunCommandParameters property type specifies the parameters to use when an Amazon CloudWatch Events rule invokes the AWS Systems Manager Run Command.

## SYNTAX

```
Add-VSEventsRuleRunCommandParameters [-RunCommandTargets] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.RunCommandParameters resource property to the template.
The RunCommandParameters property type specifies the parameters to use when an Amazon CloudWatch Events rule invokes the AWS Systems Manager Run Command.

RunCommandParameters is a property of the Target: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html property type.

This parameter contains the criteria (either InstanceIds or a tag used to specify which EC2 instances are to be sent the command.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RunCommandTargets
The criteria either InstanceIds or a tag that specifies which EC2 instances the command is sent to.
Currently, you can include only one RunCommandTarget block, which specifies a list of InstanceIds or a tag.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html#cfn-events-rule-runcommandparameters-runcommandtargets
DuplicatesAllowed: False
ItemType: RunCommandTarget
Type: List
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

### Vaporshell.Resource.Events.Rule.RunCommandParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html)

