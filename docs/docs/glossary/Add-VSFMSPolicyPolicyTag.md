# Add-VSFMSPolicyPolicyTag

## SYNOPSIS
Adds an AWS::FMS::Policy.PolicyTag resource property to the template.
A collection of key:value pairs associated with an AWS resource.
The key:value pair can be anything you define.
Typically, the tag key represents a category (such as "environment" and the tag value represents a specific value within that category (such as "test," "development," or "production".
You can add up to 50 tags to each AWS resource.

## SYNTAX

```
Add-VSFMSPolicyPolicyTag [-Key] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::FMS::Policy.PolicyTag resource property to the template.
A collection of key:value pairs associated with an AWS resource.
The key:value pair can be anything you define.
Typically, the tag key represents a category (such as "environment" and the tag value represents a specific value within that category (such as "test," "development," or "production".
You can add up to 50 tags to each AWS resource.

## PARAMETERS

### -Key
Part of the key:value pair that defines a tag.
You can use a tag key to describe a category of information, such as "customer." Tag keys are case-sensitive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policytag.html#cfn-fms-policy-policytag-key
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
Part of the key:value pair that defines a tag.
You can use a tag value to describe a specific value within a category, such as "companyA" or "companyB." Tag values are case-sensitive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policytag.html#cfn-fms-policy-policytag-value
UpdateType: Mutable
PrimitiveType: String

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

### Vaporshell.Resource.FMS.Policy.PolicyTag
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policytag.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policytag.html)

