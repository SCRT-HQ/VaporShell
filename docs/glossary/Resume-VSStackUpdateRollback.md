---
layout: glossary
title: Resume-VSStackUpdateRollback
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Resume-VSStackUpdateRollback

## SYNOPSIS
For a specified stack that is in the UPDATE_ROLLBACK_FAILED state, continues rolling it back to the UPDATE_ROLLBACK_COMPLETE state.
Depending on the cause of the failure, you can manually fix the error and continue the rollback.
By continuing the rollback, you can return your stack to a working state (the UPDATE_ROLLBACK_COMPLETE state), and then try to update the stack again.

## SYNTAX

```
Resume-VSStackUpdateRollback [[-StackName] <String>] [[-ClientRequestToken] <String>]
 [[-ResourcesToSkip] <String[]>] [[-RoleARN] <String>] [[-ProfileName] <String>]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -StackName
The name or the unique ID of the stack that you want to continue rolling back.
Don't specify the name of a nested stack (a stack that was created by using the AWS::CloudFormation::Stack resource).
Instead, use this operation on the parent stack (the stack that contains the AWS::CloudFormation::Stack resource).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientRequestToken
A unique identifier for this ContinueUpdateRollback request.
Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to continue the rollback to a stack with the same name.
You might retry ContinueUpdateRollback requests to ensure that AWS CloudFormation successfully received them.

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

### -ResourcesToSkip
A list of the logical IDs of the resources that AWS CloudFormation skips during the continue update rollback operation.
You can specify only resources that are in the UPDATE_FAILED state because a rollback failed.
You can't specify resources that are in the UPDATE_FAILED state for other reasons, for example, because an update was cancelled.
To check why a resource update failed, use the DescribeStackResources action, and view the resource status reason.

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
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to roll back the stack.
AWS CloudFormation uses the role's credentials to make calls on your behalf.
AWS CloudFormation always uses this role for all future operations on the stack.
As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it.
Ensure that the role grants least privilege.
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

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

