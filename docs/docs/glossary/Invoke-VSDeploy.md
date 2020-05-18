# Invoke-VSDeploy

## SYNOPSIS
Creates a change set then executes it

## SYNTAX

### TemplateFile (Default)
```
Invoke-VSDeploy [-TemplateFile] <String> [-StackName] <String> [-Parameters <Object>]
 [-Capabilities <String[]>] [-DoNotExecute] [-RoleARN <String>] [-NotificationARNs <String[]>] [-Watch]
 [-ProfileName <String>] [<CommonParameters>]
```

### TemplateBody
```
Invoke-VSDeploy [-TemplateBody] <String> [-StackName] <String> [-Parameters <Object>]
 [-Capabilities <String[]>] [-DoNotExecute] [-RoleARN <String>] [-NotificationARNs <String[]>] [-Watch]
 [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
Invokes a change set in CloudFormation.
If the stack name already exists, it updates that stack.
If it does not, it creates a new stack.

## PARAMETERS

### -TemplateBody
A JSON or YAML string containing the template body.

```yaml
Type: String
Parameter Sets: TemplateBody
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -TemplateFile
The path to the local file containing the template.

```yaml
Type: String
Parameter Sets: TemplateFile
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackName
The name of the AWS CloudFormation stack you're deploying to.
If you specify an existing stack, the command updates the stack.
If you specify a new stack, the command creates it.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
A hashtable of key-value parameters that specify input parameters for your stack template.
If you're updating a stack and you don't specify a parameter, the command uses the stack's existing value.
For new stacks, you must specify parameters that don't have a default value.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: ParameterOverrides

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Capabilities
A list of capabilities that you must specify before AWS Cloudformation can create certain stacks.
Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users.
For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.
The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM.
If you have IAM resources, you can specify either capability.
If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM

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

### -DoNotExecute
Indicates whether to execute the change set.
Specify this flag if you want to view your stack changes before executing the change set.
The command creates an AWS CloudFormation change set and then exits without executing the change set.
After you view the change set, execute it to implement your changes.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: NoExecuteChangeSet

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleARN
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set.

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

### -NotificationARNs
Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack.

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

### -Watch
{{ Fill Watch Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
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
