# Add-VSResourceGroupsGroupTagFilter

## SYNOPSIS
Adds an AWS::ResourceGroups::Group.TagFilter resource property to the template.
The TagFilter object used to define tag-based group membership.

## SYNTAX

```
Add-VSResourceGroupsGroupTagFilter [[-Key] <Object>] [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ResourceGroups::Group.TagFilter resource property to the template.
The TagFilter object used to define tag-based group membership.

## PARAMETERS

### -Key
A string that defines a tag key.
Only resources in the account that are tagged with a specified tag key are members of the tag-based resource group.
This field is required when the ResourceQuery.Type property is TAG_FILTERS_1_0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-key
UpdateType: Mutable
PrimitiveType: String

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

### -Values
A list of tag values that can be included in the tag-based resource group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-values
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### Vaporshell.Resource.ResourceGroups.Group.TagFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html)

