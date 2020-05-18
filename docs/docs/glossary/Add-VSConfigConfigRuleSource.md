# Add-VSConfigConfigRuleSource

## SYNOPSIS
Adds an AWS::Config::ConfigRule.Source resource property to the template.
Provides the AWS Config rule owner (AWS or customer, the rule identifier, and the events that trigger the evaluation of your AWS resources.

## SYNTAX

```
Add-VSConfigConfigRuleSource [-Owner] <Object> [[-SourceDetails] <Object>] [-SourceIdentifier] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::ConfigRule.Source resource property to the template.
Provides the AWS Config rule owner (AWS or customer, the rule identifier, and the events that trigger the evaluation of your AWS resources.

## PARAMETERS

### -Owner
Indicates whether AWS or the customer owns and manages the AWS Config rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-owner
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

### -SourceDetails
Provides the source and type of the event that causes AWS Config to evaluate your AWS resources.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourcedetails
DuplicatesAllowed: False
ItemType: SourceDetail
Type: List
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

### -SourceIdentifier
For AWS Config managed rules, a predefined identifier from a list.
For example, IAM_PASSWORD_POLICY is a managed rule.
To reference a managed rule, see Using AWS Managed Config Rules: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html.
For custom rules, the identifier is the Amazon Resource Name ARN of the rule's AWS Lambda function, such as arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourceidentifier
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

### Vaporshell.Resource.Config.ConfigRule.Source
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html)

