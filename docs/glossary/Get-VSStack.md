# Get-VSStack

## SYNOPSIS
Gets info about a stack or list of stacks

## SYNTAX

### Description (Default)
```
Get-VSStack [-Description] [-StackId <String>] [-ProfileName <String>] [<CommonParameters>]
```

### ListStacks
```
Get-VSStack [-List] [-StackStatusFilter <String>] [-ProfileName <String>] [<CommonParameters>]
```

### Policy
```
Get-VSStack [-Policy] [-StackId <String>] [-ProfileName <String>] [<CommonParameters>]
```

### Template
```
Get-VSStack [-Template] [-StackId <String>] [-ChangeSetName <String>] [-TemplateStage <String>]
 [-ProfileName <String>] [<CommonParameters>]
```

### Events
```
Get-VSStack [-Events] [-StackId <String>] [-Colorize] [-ProfileName <String>] [<CommonParameters>]
```

### Resource
```
Get-VSStack [-Resource] [-StackId <String>] [-LogicalResourceId <String>] [-ProfileName <String>]
 [<CommonParameters>]
```

### ResourcesStackId
```
Get-VSStack [-Resources] [-StackId <String>] [-LogicalResourceId <String>] [-ProfileName <String>]
 [<CommonParameters>]
```

### ResourcesPhysicalId
```
Get-VSStack [-Resources] [-LogicalResourceId <String>] [-PhysicalResourceId <String>] [-ProfileName <String>]
 [<CommonParameters>]
```

### ResourceList
```
Get-VSStack [-ResourceList] [-StackId <String>] [-ProfileName <String>] [<CommonParameters>]
```

### ExportList
```
Get-VSStack [-ExportList] [-ProfileName <String>] [<CommonParameters>]
```

### ImportList
```
Get-VSStack [-ImportList] [-ExportName <String>] [-ProfileName <String>] [<CommonParameters>]
```

### SummaryUrl
```
Get-VSStack [-Summary] [-StackId <String>] [-StackSetName <String>] [-TemplateUrl <String>]
 [-ProfileName <String>] [<CommonParameters>]
```

### SummaryBody
```
Get-VSStack [-Summary] [-StackId <String>] [-StackSetName <String>] [-TemplateBody <String>]
 [-ProfileName <String>] [<CommonParameters>]
```

### SummaryPath
```
Get-VSStack [-Summary] [-StackId <String>] [-StackSetName <String>] [-Path <String>] [-ProfileName <String>]
 [<CommonParameters>]
```

### EstimatedCostPath
```
Get-VSStack [-EstimatedCost] [-Path <String>] [-Parameters <Parameter[]>] [-ProfileName <String>]
 [<CommonParameters>]
```

### EstimatedCostUrl
```
Get-VSStack [-EstimatedCost] [-TemplateUrl <String>] [-Parameters <Parameter[]>] [-ProfileName <String>]
 [<CommonParameters>]
```

### EstimatedCostBody
```
Get-VSStack [-EstimatedCost] [-TemplateBody <String>] [-Parameters <Parameter[]>] [-ProfileName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Gets the description, policy, template, event list, resource info, resource list, exports info, imports info, summary or even estimated cost of a particular stack.
This can also be used to list your stacks.

## EXAMPLES

### EXAMPLE 1
```
# This gets the list of stacks.
```

Get-VSStack -List

### EXAMPLE 2
```
# This gets the list of stacks and shows the events for each in color.
```

Get-VSStack -List | Get-VSStack -Events -ColorizeEvents

### EXAMPLE 3
```
# This gets the description for a stack named 'testSAMdeployment'
```

Get-VSStack -StackId testSAMdeployment

## PARAMETERS

### -Description
Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.
If the stack does not exist, an AmazonCloudFormationException is returned.

```yaml
Type: SwitchParameter
Parameter Sets: Description
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -List
Returns the summary information for stacks whose status matches the specified StackStatusFilter.
Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted.
If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).

```yaml
Type: SwitchParameter
Parameter Sets: ListStacks
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Policy
Returns the stack policy for a specified stack.
If a stack doesn't have a policy, a null value is returned.

```yaml
Type: SwitchParameter
Parameter Sets: Policy
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Template
Returns the template body for a specified stack.
You can get the template for running or deleted stacks.

```yaml
Type: SwitchParameter
Parameter Sets: Template
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Events
Returns all stack related events for a specified stack in reverse chronological order.

```yaml
Type: SwitchParameter
Parameter Sets: Events
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Resource
Returns a description of the specified resource in the specified stack.

```yaml
Type: SwitchParameter
Parameter Sets: Resource
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Resources
Returns AWS resource descriptions for running and deleted stacks.
If StackName is specified, all the associated resources that are part of the stack are returned.
If PhysicalResourceId is specified, the associated resources of the stack that the resource belongs to are returned.

```yaml
Type: SwitchParameter
Parameter Sets: ResourcesStackId, ResourcesPhysicalId
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceList
Returns descriptions of all resources of the specified stack.

```yaml
Type: SwitchParameter
Parameter Sets: ResourceList
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExportList
Lists all exported output values in the account and region in which you call this action.
Use this action to see the exported output values that you can import into other stacks.
To import values, use the Fn::ImportValue function.

```yaml
Type: SwitchParameter
Parameter Sets: ExportList
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImportList
Lists all stacks that are importing an exported output value.
To modify or remove an exported output value, first use this action to see which stacks are using it.
To see the exported output values in your account, see ListExports.

```yaml
Type: SwitchParameter
Parameter Sets: ImportList
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Summary
Returns information about a new or existing template.
The GetTemplateSummary action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set.
You can use the GetTemplateSummary action when you submit a template, or you can get template information for a stack set, or a running or deleted stack.
For deleted stacks, GetTemplateSummary returns the template information for up to 90 days after the stack has been deleted.
If the template does not exist, a ValidationError is returned.

```yaml
Type: SwitchParameter
Parameter Sets: SummaryUrl, SummaryBody, SummaryPath
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -EstimatedCost
Returns the estimated monthly cost of a template.
The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.

```yaml
Type: SwitchParameter
Parameter Sets: EstimatedCostPath, EstimatedCostUrl, EstimatedCostBody
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackId
The Stack ID or Stack Name of the stack you are trying to get info for.

```yaml
Type: String
Parameter Sets: Description, Policy, Template, Events, Resource, ResourcesStackId, ResourceList, SummaryUrl, SummaryBody, SummaryPath
Aliases: StackName

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LogicalResourceId
The logical name of the resource as specified in the template.

```yaml
Type: String
Parameter Sets: Resource, ResourcesStackId, ResourcesPhysicalId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PhysicalResourceId
The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
For example, for an Amazon Elastic Compute Cloud (EC2) instance, PhysicalResourceId corresponds to the InstanceId.
You can pass the EC2 InstanceId to DescribeStackResources to find which stack the instance belongs to and what other resources are part of the stack.

```yaml
Type: String
Parameter Sets: ResourcesPhysicalId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackSetName
The name or unique ID of the stack set from which the stack was created.

```yaml
Type: String
Parameter Sets: SummaryUrl, SummaryBody, SummaryPath
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExportName
The name of the exported output value.
AWS CloudFormation returns the stack names that are importing this value.

```yaml
Type: String
Parameter Sets: ImportList
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChangeSetName
The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation returns the associated template.
If you specify a name, you must also specify the StackName.

```yaml
Type: String
Parameter Sets: Template
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateStage
For templates that include transforms, the stage of the template that AWS CloudFormation returns.
To get the user-submitted template, specify Original.
To get the template after AWS CloudFormation has processed all transforms, specify Processed.
If the template doesn't include transforms, Original and Processed return the same template.
By default, AWS CloudFormation specifies Original.

```yaml
Type: String
Parameter Sets: Template
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateBody
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.

```yaml
Type: String
Parameter Sets: SummaryBody
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: EstimatedCostBody
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateUrl
Location of file containing the template body.
The URL must point to a template that is located in an Amazon S3 bucket.

```yaml
Type: String
Parameter Sets: SummaryUrl, EstimatedCostUrl
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Absolute or relative file path to the template file you would like to summarize.

```yaml
Type: String
Parameter Sets: SummaryPath, EstimatedCostPath
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
A list of Parameter structures that specify input parameters.

```yaml
Type: Parameter[]
Parameter Sets: EstimatedCostPath, EstimatedCostUrl, EstimatedCostBody
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackStatusFilter
Stack status to use as a filter.
Specify one or more stack status codes to list only stacks with the specified status codes.
For a complete list of stack status codes, see the StackStatus parameter of the Stack data type.

```yaml
Type: String
Parameter Sets: ListStacks
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Colorize
Used with -Events to output colorized events.

```yaml
Type: SwitchParameter
Parameter Sets: Events
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
