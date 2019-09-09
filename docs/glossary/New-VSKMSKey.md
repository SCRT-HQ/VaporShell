# New-VSKMSKey

## SYNOPSIS
Adds an AWS::KMS::Key resource to the template.
The AWS::KMS::Key resource specifies a customer master key: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys (CMK in AWS Key Management Service (AWS KMS.
Authorized users can use the CMK to encrypt and decrypt small amounts of data (up to 4096 bytes, but they are more commonly used to generate data keys.
You can also use CMKs to encrypt data stored in AWS services that are integrated with AWS KMS: http://aws.amazon.com/kms/features/#AWS_Service_Integration or within their applications.
For more information, see What is the AWS Key Management Service?: https://docs.aws.amazon.com/kms/latest/developerguide/overview.html in the *AWS Key Management Service Developer Guide*.

## SYNTAX

```
New-VSKMSKey [-LogicalId] <String> [-Description <Object>] [-EnableKeyRotation <Boolean>] [-Enabled <Boolean>]
 -KeyPolicy <Object> [-KeyUsage <Object>] [-PendingWindowInDays <Int32>] [-Tags <Object>]
 [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KMS::Key resource to the template.
The AWS::KMS::Key resource specifies a customer master key: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys (CMK in AWS Key Management Service (AWS KMS.
Authorized users can use the CMK to encrypt and decrypt small amounts of data (up to 4096 bytes, but they are more commonly used to generate data keys.
You can also use CMKs to encrypt data stored in AWS services that are integrated with AWS KMS: http://aws.amazon.com/kms/features/#AWS_Service_Integration or within their applications.
For more information, see What is the AWS Key Management Service?: https://docs.aws.amazon.com/kms/latest/developerguide/overview.html in the *AWS Key Management Service Developer Guide*.

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

### -Description
A description of the CMK.
Use a description that helps you to distinguish this CMK from others in the account, such as its intended use.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-description
PrimitiveType: String
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

### -EnableKeyRotation
Enables automatic rotation of the key material for the specified customer master key CMK.
By default, automation key rotation is not enabled.
When you enable automatic rotation, AWS KMS automatically creates new key material for the CMK 365 days after the enable or reenable date and every 365 days thereafter.
AWS KMS retains all key material until you delete the CMK.
For detailed information about automatic key rotation, see Rotating Customer Master Keys: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html in the *AWS Key Management Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enablekeyrotation
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

### -Enabled
Specifies whether the customer master key CMK is enabled.
Disabled CMKs cannot be used in cryptographic operations.
When Enabled is true, the *key state* of the CMK is Enabled.
When Enabled is false, the key state of the CMK is Disabled.
The default value is true.
The actual key state of the CMK might be affected by actions taken outside of CloudFormation, such as running the EnableKey: https://docs.aws.amazon.com/kms/latest/APIReference/API_EnableKey.html, DisableKey: https://docs.aws.amazon.com/kms/latest/APIReference/API_DisableKey.html, or ScheduleKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html operations.
For information about the key states of a CMK, see How Key State Affects Use of a Customer Master Key: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html in the *AWS Key Management Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enabled
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

### -KeyPolicy
The key policy that authorizes use of the CMK.
The key policy must observe the following rules.
+ The key policy must allow the caller to make a subsequent PutKeyPolicy: https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html request on the CMK.
This reduces the risk that the CMK becomes unmanageable.
For more information, refer to the scenario in the Default Key Policy: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam section of the * *AWS Key Management Service Developer Guide* *.
+ Each statement in the key policy must contain one or more principals.
The principals in the key policy must exist and be visible to AWS KMS.
When you create a new AWS principal for example, an IAM user or role, you might need to enforce a delay before including the new principal in a key policy because the new principal might not be immediately visible to AWS KMS.
For more information, see Changes that I make are not always immediately visible: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency in the *AWS Identity and Access Management User Guide*.
+ The key policy size limit is 32 kilobytes 32768 bytes.
If you are unsure of which policy to use, consider the *default key policy*.
This is the key policy that AWS KMS applies to CMKs that are created by using the CreateKey API with no specified key policy.
It gives the AWS account that owns the key permission to perform all operations on the key.
It also allows you write IAM policies to authorize access to the key.
For details, see Default Key Policy: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default in the *AWS Key Management Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keypolicy
PrimitiveType: Json
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

### -KeyUsage
The cryptographic operations for which you can use the CMK.
The only valid value is ENCRYPT_DECRYPT, which means you can use the CMK to encrypt and decrypt data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyusage
PrimitiveType: String
UpdateType: Immutable

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

### -PendingWindowInDays
Specifies the number of days in the waiting period before AWS KMS deletes a CMK that has been removed from a CloudFormation stack.
Enter a value between 7 and 30 days.
The default value is 30 days.
When you remove a customer master key CMK from a CloudFormation stack, AWS KMS schedules the CMK for deletion and starts the mandatory waiting period.
The PendingWindowInDays property determines the length of waiting period.
During the waiting period, the key state of CMK is Pending Deletion, which prevents the CMK from being used in cryptographic operations.
When the waiting period expires, AWS KMS permanently deletes the CMK.
You cannot use a CloudFormation template to cancel deletion of the CMK after you remove it from the stack, regardless of the waiting period.
If you specify a CMK in your template, even one with the same name, CloudFormation creates a new CMK.
To cancel deletion of a CMK, use the AWS KMS console or the CancelKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_CancelKeyDeletion.html operation.
For information about the PendingDeletion key state, see How Key State Affects Use of a Customer Master Key: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html in the *AWS Key Management Service Developer Guide*.
For more information about deleting CMKs, see the ScheduleKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html operation in the *AWS Key Management Service API Reference* and Deleting Customer Master Keys: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html in the *AWS Key Management Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-pendingwindowindays
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
An array of key-value pairs to apply to this resource.
For more information, see Tag: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-tags
DuplicatesAllowed: True
ItemType: Tag
Type: List
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

### Vaporshell.Resource.KMS.Key
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html)

