# Add-VSResourceGroupsGroupResourceQuery

## SYNOPSIS
Adds an AWS::ResourceGroups::Group.ResourceQuery resource property to the template.
The query used to define a group.

## SYNTAX

```
Add-VSResourceGroupsGroupResourceQuery [[-Type] <Object>] [[-Query] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ResourceGroups::Group.ResourceQuery resource property to the template.
The query used to define a group.

## PARAMETERS

### -Type
The valid types are TAG_FILTERS_1_0 and CLOUDFORMATION_STACK_1_0.
Each type requires specific attributes for the Query object:
+ TAG_FILTERS_1_0 indicates that the group is a tag-based group.
Group membership is defined by the query's TagFilters property.
Specify the tag filters to use in the query.
+ CLOUDFORMATION_STACK_1_0, the default, indicates that the group is a CloudFormation stack-based group.
Group membership is based on the CloudFormation stack.
Specify the StackIdentifier property in the query to define which stack to associate the group with, or leave it empty to default to the stack where the group is defined.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-type
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

### -Query
The query that defines a group.
This field is required when the type is TAG_FILTERS_1_0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-query
UpdateType: Mutable
Type: Query

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

### Vaporshell.Resource.ResourceGroups.Group.ResourceQuery
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html)

