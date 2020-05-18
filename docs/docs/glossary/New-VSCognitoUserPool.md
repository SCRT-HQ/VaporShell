# New-VSCognitoUserPool

## SYNOPSIS
Adds an AWS::Cognito::UserPool resource to the template.
The AWS::Cognito::UserPool resource creates an Amazon Cognito user pool.
For more information on working with Amazon Cognito user pools, see Amazon Cognito User Pools: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html and CreateUserPool: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateUserPool.html.

## SYNTAX

```
New-VSCognitoUserPool [-LogicalId] <String> [-UserPoolTags <Object>] [-Policies <Object>]
 [-VerificationMessageTemplate <Object>] [-MfaConfiguration <Object>] [-Schema <Object>]
 [-AdminCreateUserConfig <Object>] [-SmsAuthenticationMessage <Object>] [-UsernameConfiguration <Object>]
 [-UserPoolName <Object>] [-SmsVerificationMessage <Object>] [-UserPoolAddOns <Object>]
 [-EmailConfiguration <Object>] [-SmsConfiguration <Object>] [-AliasAttributes <Object>]
 [-EnabledMfas <Object>] [-EmailVerificationSubject <Object>] [-LambdaConfig <Object>]
 [-UsernameAttributes <Object>] [-AutoVerifiedAttributes <Object>] [-DeviceConfiguration <Object>]
 [-EmailVerificationMessage <Object>] [-AccountRecoverySetting <Object>] [-DeletionPolicy <String>]
 [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPool resource to the template.
The AWS::Cognito::UserPool resource creates an Amazon Cognito user pool.
For more information on working with Amazon Cognito user pools, see Amazon Cognito User Pools: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html and CreateUserPool: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateUserPool.html.

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

### -UserPoolTags
The tag keys and values to assign to the user pool.
A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooltags
PrimitiveType: Json
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

### -Policies
The policy associated with a user pool.

Type: Policies
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-policies
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

### -VerificationMessageTemplate
The template for the verification message that the user sees when the app requests permission to access the user's information.

Type: VerificationMessageTemplate
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-verificationmessagetemplate
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

### -MfaConfiguration
The multi-factor MFA configuration.
Valid values include:
+  OFF MFA will not be used for any users.
+  ON MFA is required for all users to sign in.
+  OPTIONAL MFA will be required only for individual users who have an MFA factor enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-mfaconfiguration
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

### -Schema
The schema attributes for the new user pool.
These attributes can be standard or custom attributes.
During a user pool update, you can add new schema attributes but you cannot modify or delete an existing schema attribute.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-schema
ItemType: SchemaAttribute
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

### -AdminCreateUserConfig
The configuration for creating a new user profile.

Type: AdminCreateUserConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-admincreateuserconfig
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

### -SmsAuthenticationMessage
A string representing the SMS authentication message.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsauthenticationmessage
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

### -UsernameConfiguration
You can choose to set case sensitivity on the username input for the selected sign-in option.
For example, when this is set to False, users will be able to sign in using either "username" or "Username".
This configuration is immutable once it has been set.

Type: UsernameConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-usernameconfiguration
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

### -UserPoolName
A string used to name the user pool.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpoolname
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

### -SmsVerificationMessage
A string representing the SMS verification message.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsverificationmessage
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

### -UserPoolAddOns
Used to enable advanced security risk detection.
Set the key AdvancedSecurityMode to the value "AUDIT".

Type: UserPoolAddOns
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooladdons
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

### -EmailConfiguration
The email configuration.

Type: EmailConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailconfiguration
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

### -SmsConfiguration
The SMS configuration.

Type: SmsConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsconfiguration
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

### -AliasAttributes
Attributes supported as an alias for this user pool.
Possible values: **phone_number**, **email**, or **preferred_username**.
This user pool property cannot be updated.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-aliasattributes
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

### -EnabledMfas
Enables MFA on a specified user pool.
To disable all MFAs after it has been enabled, set MfaConfiguration to "OFF" and remove EnabledMfas.
MFAs can only be all disabled if MfaConfiguration is OFF.
Once SMS_MFA is enabled, SMS_MFA can only be disabled by setting MfaConfiguration to "OFF".
Can be one of the following values:
+ SMS_MFA - Enables SMS MFA for the user pool.
SMS_MFA can only be enabled if SMS configuration is provided.
+ SOFTWARE_TOKEN_MFA - Enables software token MFA for the user pool.
Allowed values: SMS_MFA | SOFTWARE_TOKEN_MFA

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-enabledmfas
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

### -EmailVerificationSubject
A string representing the email verification subject.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationsubject
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

### -LambdaConfig
The Lambda trigger configuration information for the new user pool.
In a push model, event sources such as Amazon S3 and custom applications need permission to invoke a function.
So you will need to make an extra call to add permission for these event sources to invoke your Lambda function.
For more information on using the Lambda API to add permission, see  AddPermission : https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html.
For adding permission using the AWS CLI, see  add-permission : https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html.

Type: LambdaConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-lambdaconfig
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

### -UsernameAttributes
Determines whether email addresses or phone numbers can be specified as user names when a user signs up.
Possible values: phone_number or email.
This user pool property cannot be updated.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-usernameattributes
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

### -AutoVerifiedAttributes
The attributes to be auto-verified.
Possible values: **email**, **phone_number**.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-autoverifiedattributes
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

### -DeviceConfiguration
The device configuration.

Type: DeviceConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-deviceconfiguration
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

### -EmailVerificationMessage
A string representing the email verification message.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationmessage
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

### -AccountRecoverySetting
Use this setting to define which verified available method a user can use to recover their password when they call ForgotPassword.
It allows you to define a preferred method when a user has more than one method available.
With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled.
In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.

Type: AccountRecoverySetting
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-accountrecoverysetting
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

### -UpdateReplacePolicy
Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters.
If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update.
Recreating the resource generates a new physical ID.
AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource.
By default, AWS CloudFormation then deletes the old resource.
Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

You can apply the UpdateReplacePolicy attribute to any resource.
UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID.
For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one.
The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance.
The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference.
For more information on resource update behavior, see Update Behaviors of Stack Resources.

The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

Note
Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources.
Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots.
UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates.
Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

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

### Vaporshell.Resource.Cognito.UserPool
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html)

