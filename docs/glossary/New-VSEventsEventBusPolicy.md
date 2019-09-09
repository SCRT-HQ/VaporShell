# New-VSEventsEventBusPolicy

## SYNOPSIS
Adds an AWS::Events::EventBusPolicy resource to the template.
The AWS::Events::EventBusPolicy resource creates an event bus policy for Amazon CloudWatch Events.
An event bus policy enables your account to receive events from other AWS accounts.
These events can trigger CloudWatch Events rules created in your account.
For more information, see Sending and Receiving Events Between AWS Accounts: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEvents-CrossAccountEventDelivery.html in the *Amazon CloudWatch Events User Guide*.

## SYNTAX

```
New-VSEventsEventBusPolicy [-LogicalId] <String> [-Condition <Object>] -Action <Object> -StatementId <Object>
 -Principal <Object> [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::EventBusPolicy resource to the template.
The AWS::Events::EventBusPolicy resource creates an event bus policy for Amazon CloudWatch Events.
An event bus policy enables your account to receive events from other AWS accounts.
These events can trigger CloudWatch Events rules created in your account.
For more information, see Sending and Receiving Events Between AWS Accounts: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEvents-CrossAccountEventDelivery.html in the *Amazon CloudWatch Events User Guide*.

If you grant permissions using Condition and specifying an organization, then accounts in that organization must specify a RoleArn with proper permissions when they use PutTarget to add your account's event bus as a target.

The permission policy on the default event bus can't exceed 10 KB in size.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Condition is a JSON string that you can use to limit the event bus permissions that you're granting only to accounts that fulfill the condition.
Currently, the only supported condition is membership in a certain AWS organization.
For more information about AWS Organizations, see What Is AWS Organizations?: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html in the *AWS Organizations User Guide*.
Condition is a property of the  AWS::Events::EventBusPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html resource type.
If you specify Condition with an AWS organization ID and specify "*" as the value for Principal, you grant permission to all the accounts in the named organization.

Type: Condition
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-condition
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Action
The action that you are enabling the other account to perform.
Currently, this must be events:PutEvents.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-action
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StatementId
An identifier string for the external account that you're granting permissions to.
If you later want to revoke the permission for this external account, you must specify this StatementId.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-statementid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Principal
The 12-digit AWS account ID that you are permitting to put events to your default event bus.
Specify "*" to permit any account to put events to your default event bus.
If you specify "*" without specifying Condition, avoid creating rules that may match undesirable events.
To create more secure rules, make sure that the event pattern for each rule contains an account field with a specific account ID from which to receive events.
Rules with an account field do not match any events sent from other accounts.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-principal
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Events.EventBusPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html)

