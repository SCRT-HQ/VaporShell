# New-VSSecretsManagerSecret

## SYNOPSIS
Adds an AWS::SecretsManager::Secret resource to the template.
The AWS::SecretsManager::Secret resource creates a secret and stores it in Secrets Manager.
For more information, see Secret: https://docs.aws.amazon.com/secretsmanager/latest/userguide/terms-concepts.html#term_secret in the *AWS Secrets Manager User Guide*, and the CreateSecret API: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html in the *AWS Secrets Manager API Reference*.

## SYNTAX

```
New-VSSecretsManagerSecret [-LogicalId] <String> [-Description <Object>] [-KmsKeyId <Object>]
 [-SecretString <Object>] [-GenerateSecretString <Object>] [-Tags <Object>] [-Name <Object>]
 [-DeletionPolicy <String>] [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SecretsManager::Secret resource to the template.
The AWS::SecretsManager::Secret resource creates a secret and stores it in Secrets Manager.
For more information, see Secret: https://docs.aws.amazon.com/secretsmanager/latest/userguide/terms-concepts.html#term_secret in the *AWS Secrets Manager User Guide*, and the CreateSecret API: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html in the *AWS Secrets Manager API Reference*.

To specify the SecretString encrypted value for the secret, specify either the SecretString or the GenerateSecretString property in this resource.
You must specify one or the other, but you can't specify both.
See the first two examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#aws-resource-secretsmanager-secret-hardcoded later in this topic.

**Note**

You can't generate a secret with a SecretBinary secret value using AWS CloudFormation.
You can only create a SecretString text-based secret value.

**Note**

Do not create a dynamic reference using a backslash ( as the final value.
AWS CloudFormation cannot resolve those references, which causes a resource failure.

After you create the basic secret, you can do any of the following:

+ Configure your secret with details of the Secrets Manager supported database or service: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html#full-rotation-support with credentials stored in this secret.

+ Attaches a resource-based permissions policy to the secret.
To do this, define a AWS::SecretsManager::ResourcePolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html resource type.

+ You can optionally configure a secret to rotate after a specified number of days.
See AWS::SecretsManager::RotationSchedule: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html.

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
Optional Specifies a user-provided description of the secret.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-description
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

### -KmsKeyId
Optional Specifies the ARN, Key ID, or alias of the AWS KMS customer master key CMK used to encrypt the SecretString or SecretBinary values for versions of this secret.
If you don't specify this value, then Secrets Manager defaults to the AWS account CMK, aws/secretsmanager.
If an AWS KMS CMK with that name doesn't exist, Secrets Manager creates the CMK for you automatically the first time it encrypts a version SecretString or SecretBinary fields.
You can use the account default CMK to encrypt and decrypt only if you call this operation using credentials from the same account that owns the secret.
If you use a secret from a different account, then you must create a custom CMK and specify the ARN in this field.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-kmskeyid
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

### -SecretString
Optional Specifies text data that you want to encrypt and store in this new version of the secret.
Either SecretString or SecretBinary must have a value, but not both.
They cannot both be empty.
If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the SecretString parameter.
The Secrets Manager console stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse.
For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs.
For information on how to format a JSON parameter for the various command line tool environments, see Using JSON for Parameters: https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json in the *AWS CLI User Guide*.
For example:
{"username":"bob","password":"abc123xyz456"}
If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-secretstring
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

### -GenerateSecretString
A structure that specifies generating a random password by using the functionality of the GetRandomPassword API: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetRandomPassword.html.
You can return that string directly to use as the secret value, or you can specify both the SecretStringTemplate and the GenerateSecretKey parameters.
Secrets Manager uses the value in GenerateSecretKey parameters.
Secrets Manager uses the value in GenerateSecretKey as the key name and combines it with the randomly generated password to make a JSON key-value pair.
Secrets Manager then inserts the pair into the JSON structure specified in the SecretStringTemplate parameter.
Secrets Manager stores the completed string as the secret value in the initial version of the secret.
For more information about how to use this property, see Secrets Manager Secret GenerateSecretString: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html and the first example: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#aws-resource-secretsmanager-secret-generated in the following Examples section.
Either SecretString or GenerateSecretString must have a value, but not both.
They cannot both be empty.

Type: GenerateSecretString
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-generatesecretstring
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

### -Tags
The list of user-defined tags associated with the secret.
Use tags to manage your AWS resources.
For additional information about tags, see TagResource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-tags
ItemType: Tag
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
The friendly name of the secret.
You can use forward slashes in the name to represent a path hierarchy.
For example, /prod/databases/dbserver1 could represent the secret for a server named dbserver1 in the folder databases in the folder prod.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-name
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

### Vaporshell.Resource.SecretsManager.Secret
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html)

