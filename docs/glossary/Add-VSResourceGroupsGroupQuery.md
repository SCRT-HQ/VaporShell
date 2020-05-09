# Add-VSResourceGroupsGroupQuery

## SYNOPSIS
Adds an AWS::ResourceGroups::Group.Query resource property to the template.
The underlying resource query of a resource group.
Resources that match query results are part of the group.

## SYNTAX

```
Add-VSResourceGroupsGroupQuery [[-ResourceTypeFilters] <Object>] [[-StackIdentifier] <Object>]
 [[-TagFilters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ResourceGroups::Group.Query resource property to the template.
The underlying resource query of a resource group.
Resources that match query results are part of the group.

## PARAMETERS

### -ResourceTypeFilters
The resource types that can be part of the resource group.
For example, if ResourceTypeFilters is "AWS::EC2::Instance", "AWS::DynamoDB::Table"\], only EC2 Instance resources or DynamoDB Table resources can be members of this resource group.
The default value is "AWS::AllSupported"\].

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-resourcetypefilters
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### -StackIdentifier
The CFN Stack ARN.
When specified, all supported resources of the CFN stack are members of the resource group.
The default value is an identifier of the current stack, which means that all the resources of the current stack are grouped.
Only specify a value for StackIdentifier when the ResourceQuery.Type property is CLOUDFORMATION_STACK_1_0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-stackidentifier
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

### -TagFilters
A list of key-value pair objects that limit which resources are members of a group.
This property is required when the ResourceQuery.Type property is TAG_FILTERS_1_0.
TagFilter objects include two properties: Key a string and Values a list of strings.
Only resources in the account that are tagged with an allowed key-value pair are members of the group.
The Values property of TagFilter is optional, but specifying it narrows the query results.
For example, suppose TagFilters is {"Key": "Stage", "Values": "Test", "Beta"\]}, {"Key": "Storage"}\].
In this case, only resources with all of the following tags are members of the group:
+ Stage tag key with a value of either Test or Beta
+ Storage tag key with any value

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-tagfilters
UpdateType: Mutable
Type: List
ItemType: TagFilter

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ResourceGroups.Group.Query
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html)

