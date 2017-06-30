---
layout: glossary
title: New-VaporOutput
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# New-VaporOutput

## SYNOPSIS
Adds an Output object to the template

## SYNTAX

```
New-VaporOutput [-LogicalId] <String> [[-Description] <String>] [-Value] <Object> [[-Export] <Object>]
 [[-Condition] <Object>]
```

## DESCRIPTION
The optional Outputs section declares output values that you can import into other stacks (to create cross-stack references), return in response (to describe stack calls), or view on the AWS CloudFormation console.
For example, you can output the S3 bucket name for a stack to make the bucket easier to find.

## PARAMETERS

### -LogicalId
An identifier for the current output.
The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.

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
A String type that describes the output value.
The description can be a maximum of 4 K in length.

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

### -Value
The value of the property returned by the aws cloudformation describe-stacks command.
The value of an output can include literals, parameter references, pseudo-parameters, a mapping value, or intrinsic functions.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Export
The name of the resource output to be exported for a cross-stack reference.

Note
    The following restrictions apply to cross-stack references:
        * For each AWS account, Export names must be unique within a region.
        * You can't create cross-stack references across regions.
You can use the intrinsic function Fn::ImportValue to import only values that have been exported within the same region.
        * For outputs, the value of the Name property of an Export can't use Ref or GetAtt functions that depend on a resource.
        * Similarly, the ImportValue function can't include Ref or GetAtt functions that depend on a resource.
        * You can't delete a stack if another stack references one of its outputs.
        * You can't modify or remove an output value that is referenced by another stack.
        * You can use intrinsic functions to customize the Name value of an export.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Logical ID of the condition that this output needs to be true in order to be provisioned.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Output

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html)

