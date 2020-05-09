# Remove-VSStack

## SYNOPSIS
Removes a Stack.

## SYNTAX

```
Remove-VSStack [-StackName] <String> [[-ClientRequestToken] <String>] [[-RetainResources] <String[]>]
 [[-RoleARN] <String>] [-Watch] [[-ProfileName] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## PARAMETERS

### -StackName
The name or the unique stack ID that is associated with the stack.

```yaml
Type: String
Parameter Sets: (All)
Aliases: StackId

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ClientRequestToken
A unique identifier for this DeleteStack request.
Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to delete a stack with the same name.
You might retry DeleteStack requests to ensure that AWS CloudFormation successfully received them.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RetainResources
For stacks in the DELETE_FAILED state, a list of resource logical IDs that are associated with the resources you want to retain.
During deletion, AWS CloudFormation deletes the stack but does not delete the retained resources.
Retaining resources is useful when you cannot delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleARN
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to delete the stack.
AWS CloudFormation uses the role's credentials to make calls on your behalf.
If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack.
If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Watch
If $true, runs Watch-Stack to show the colorized output of the stack events.

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
Position: 5
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

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

## NOTES

## RELATED LINKS
