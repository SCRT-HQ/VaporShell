# Add-VSFMSPolicyResourceTag

## SYNOPSIS
Adds an AWS::FMS::Policy.ResourceTag resource property to the template.
The resource tags that AWS Firewall Manager uses to determine if a particular resource should be included or excluded from the AWS Firewall Manager policy.
Tags enable you to categorize your AWS resources in different ways, for example, by purpose, owner, or environment.
Each tag consists of a key and an optional value.
Firewall Manager combines the tags with "AND" so that, if you add more than one tag to a policy scope, a resource must have all the specified tags to be included or excluded.
For more information, see Working with Tag Editor: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html.

## SYNTAX

```
Add-VSFMSPolicyResourceTag [-Key] <Object> [[-Value] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::FMS::Policy.ResourceTag resource property to the template.
The resource tags that AWS Firewall Manager uses to determine if a particular resource should be included or excluded from the AWS Firewall Manager policy.
Tags enable you to categorize your AWS resources in different ways, for example, by purpose, owner, or environment.
Each tag consists of a key and an optional value.
Firewall Manager combines the tags with "AND" so that, if you add more than one tag to a policy scope, a resource must have all the specified tags to be included or excluded.
For more information, see Working with Tag Editor: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html.

## PARAMETERS

### -Key
The resource tag key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html#cfn-fms-policy-resourcetag-key
UpdateType: Mutable
PrimitiveType: String

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

### -Value
The resource tag value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html#cfn-fms-policy-resourcetag-value
UpdateType: Mutable
PrimitiveType: String

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

### Vaporshell.Resource.FMS.Policy.ResourceTag
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html)

