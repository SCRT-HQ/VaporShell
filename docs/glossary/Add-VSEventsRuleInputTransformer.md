# Add-VSEventsRuleInputTransformer

## SYNOPSIS
Adds an AWS::Events::Rule.InputTransformer resource property to the template.
The InputTransformer property type specifies settings that provide custom input to an Amazon CloudWatch Events target based on certain event data.

## SYNTAX

```
Add-VSEventsRuleInputTransformer [[-InputPathsMap] <Hashtable>] [-InputTemplate] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.InputTransformer resource property to the template.
The InputTransformer property type specifies settings that provide custom input to an Amazon CloudWatch Events target based on certain event data.

InputTransformer is a property of the Target: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InputPathsMap
Map of JSON paths to be extracted from the event.
You can then insert these in the template in InputTemplate to produce the output you want to be sent to the target.
InputPathsMap is an array key-value pairs, where each value is a valid JSON path.
You can have as many as 10 key-value pairs.
You must use JSON dot notation, not bracket notation.
The keys cannot start with "AWS."

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputpathsmap
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputTemplate
Input template where you specify placeholders that will be filled with the values of the keys from InputPathsMap to customize the data sent to the target.
Enclose each InputPathsMaps value in brackets: \<*value*\> The InputTemplate must be valid JSON.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputtemplate
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

### Vaporshell.Resource.Events.Rule.InputTransformer
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html)

