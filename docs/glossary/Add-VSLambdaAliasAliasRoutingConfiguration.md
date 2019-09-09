# Add-VSLambdaAliasAliasRoutingConfiguration

## SYNOPSIS
Adds an AWS::Lambda::Alias.AliasRoutingConfiguration resource property to the template.
The traffic-shifting: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html configuration of a Lambda function alias.

## SYNTAX

```
Add-VSLambdaAliasAliasRoutingConfiguration [-AdditionalVersionWeights] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::Alias.AliasRoutingConfiguration resource property to the template.
The traffic-shifting: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html configuration of a Lambda function alias.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AdditionalVersionWeights
The name of the second alias, and the percentage of traffic that's routed to it.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html#cfn-lambda-alias-aliasroutingconfiguration-additionalversionweights
DuplicatesAllowed: False
ItemType: VersionWeight
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

### Vaporshell.Resource.Lambda.Alias.AliasRoutingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html)

