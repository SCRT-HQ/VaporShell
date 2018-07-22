---
layout: glossary
title: vsl
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# vsl

## SYNOPSIS
CLI style superset of VaporShell focused on packaging and deployment of CloudFormation stacks.

For detailed parameter explanation, please run the following command with the action you'd like help with:

vsl $action --help #actions: package | deploy | vaporize

## SYNTAX

```
vsl [-action] <Object> [-help] [[-parameters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
CLI style superset of VaporShell focused on packaging and deployment of CloudFormation stacks.
Allows you to build stacks with detailed transforms like SAM templates containing local resources with one easy command.

## PARAMETERS

### -action
The action that you'd like to do; options for this are: package, deploy, and vaporize (package AND deploy rolled into one).

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -help
Switch to show help for the chosen action.

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

### -parameters
The arguments to pass to vsl in CLI style:

--template-file \<value\> --stack-name \<value\> --s3-bucket \<value\> \[--s3-prefix \<value\>\] \[--parameter-overrides \<value\> \[\<value\>...\]\] \[--capabilities \<value\> \[\<value\>...\]\] \[--no-execute-changeset\] \[--role-arn \<value\>\] \[--notification-arns \<value\> \[\<value\>...\]\] \[--kms-key-id \<value\>\] \[--output-template-file \<value\>\] \[--use-json\] \[--force-upload\] \[--profile-name \<value\>\] \[--verbose {info (default)|full}\]

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
General notes

## RELATED LINKS
