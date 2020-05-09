# Add-VSTag

## SYNOPSIS
Adds an Tag resource property to the template.
You can use the Resource Tags property to apply tags to resources, which can help you identify and categorize those resources.
You can tag only resources for which AWS CloudFormation supports tagging.
For information about which resources you can tag with AWS CloudFormation, see the individual resources in AWS Resource and Property Types Reference: aws-template-resource-type-ref.md.

## SYNTAX

```
Add-VSTag [-Key] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an Tag resource property to the template.
You can use the Resource Tags property to apply tags to resources, which can help you identify and categorize those resources.
You can tag only resources for which AWS CloudFormation supports tagging.
For information about which resources you can tag with AWS CloudFormation, see the individual resources in AWS Resource and Property Types Reference: aws-template-resource-type-ref.md.

**Note**

Tagging implementations might vary by resource.
For example, AWS::AutoScaling::AutoScalingGroup provides an additional, required PropagateAtLaunch property as part of its tagging scheme.

In addition to any tags you define, AWS CloudFormation automatically creates the following stack-level tags with the prefix aws::

+ aws:cloudformation:logical-id

+ aws:cloudformation:stack-id

+ aws:cloudformation:stack-name

The aws: prefix is reserved for AWS use.
This prefix is case-insensitive.
If you use this prefix in the Key or Value property, you cannot update or delete the tag.
Tags with this prefix don't count toward the number of tags per resource.

All stack-level tags, including automatically created tags, are propagated to resources that AWS CloudFormation supports.
Currently, tags are not propagated to Amazon EBS volumes that are created from block device mappings.

## PARAMETERS

### -Key
The key name of the tag.
You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:.
You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-key
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

### -Value
The value for the tag.
You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:.
You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-value
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

### Vaporshell.Resource.Tag
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html)

