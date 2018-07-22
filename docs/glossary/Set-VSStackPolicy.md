---
layout: glossary
title: Set-VSStackPolicy
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Set-VSStackPolicy

## SYNOPSIS
Sets the Stack Policy.

## SYNTAX

### StackPolicyBody (Default)
```
Set-VSStackPolicy [-StackName <String>] [-StackPolicyBody] <String> [-ProfileName <String>]
 [<CommonParameters>]
```

### Path
```
Set-VSStackPolicy [-StackName <String>] [-Path] <String> [-ProfileName <String>] [<CommonParameters>]
```

### StackPolicyURL
```
Set-VSStackPolicy [-StackName <String>] [-StackPolicyURL] <String> [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -StackName
The name or unique stack ID that you want to associate a policy with.

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

### -StackPolicyBody
Structure containing the stack policy body.

```yaml
Type: String
Parameter Sets: StackPolicyBody
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Path
Path to the local Stack Policy file

```yaml
Type: String
Parameter Sets: Path
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackPolicyURL
Location of a file containing the stack policy.
The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack.

```yaml
Type: String
Parameter Sets: StackPolicyURL
Aliases:

Required: True
Position: 1
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
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
