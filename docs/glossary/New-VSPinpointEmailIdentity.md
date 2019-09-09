# New-VSPinpointEmailIdentity

## SYNOPSIS
Adds an AWS::PinpointEmail::Identity resource to the template.
Specifies an identity to use for sending email through Amazon Pinpoint.
In Amazon Pinpoint, an *identity* is an email address or domain that you use when you send email.
Before you can use Amazon Pinpoint to send an email from an identity, you first have to verify it.
By verifying an identity, you demonstrate that you're the owner of the address or domain, and that you've given Amazon Pinpoint permission to send email from that identity.

## SYNTAX

```
New-VSPinpointEmailIdentity [-LogicalId] <String> [-FeedbackForwardingEnabled <Boolean>]
 [-DkimSigningEnabled <Boolean>] [-Tags <Object>] -Name <Object> [-MailFromAttributes <Object>]
 [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::Identity resource to the template.
Specifies an identity to use for sending email through Amazon Pinpoint.
In Amazon Pinpoint, an *identity* is an email address or domain that you use when you send email.
Before you can use Amazon Pinpoint to send an email from an identity, you first have to verify it.
By verifying an identity, you demonstrate that you're the owner of the address or domain, and that you've given Amazon Pinpoint permission to send email from that identity.

When you verify an email address, Amazon Pinpoint sends an email to the address.
Your email address is verified as soon as you follow the link in the verification email.

When you verify a domain, this operation provides a set of DKIM tokens, which you can convert into CNAME tokens.
You add these CNAME tokens to the DNS configuration for your domain.
Your domain is verified when Amazon Pinpoint detects these records in the DNS configuration for your domain.
It usually takes around 72 hours to complete the domain verification process.

**Important**

When you use CloudFormation to specify an identity, CloudFormation might indicate that the identity was created successfully.
However, you have to verify the identity before you can use it to send email.

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

### -FeedbackForwardingEnabled
Used to enable or disable feedback forwarding for an identity.
This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event.
When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce or complaint events occur.
Amazon Pinpoint sends this notification to the address that you specified in the Return-Path header of the original email.
When you disable feedback forwarding, Amazon Pinpoint sends notifications through other mechanisms, such as by notifying an Amazon SNS topic.
You're required to have a method of tracking bounces and complaints.
If you haven't set up another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events occur even if this setting is disabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-feedbackforwardingenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DkimSigningEnabled
For domain identities, this attribute is used to enable or disable DomainKeys Identified Mail DKIM signing for the domain.
If the value is true, then the messages that you send from the domain are signed using both the DKIM keys for your domain, as well as the keys for the amazonses.com domain.
If the value is false, then the messages that you send are only signed using the DKIM keys for the amazonses.com domain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-dkimsigningenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
An object that defines the tags keys and values that you want to associate with the email identity.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-tags
ItemType: Tags
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

### -Name
The address or domain of the identity, such as *sender@example.com* or *example.co.uk*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-name
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

### -MailFromAttributes
Used to enable or disable the custom Mail-From domain configuration for an email identity.

Type: MailFromAttributes
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-mailfromattributes
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

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

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

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

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

### Vaporshell.Resource.PinpointEmail.Identity
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html)

