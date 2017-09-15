---
layout: glossary
title: Add-FnRef
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-FnRef

## SYNOPSIS
Adds the intrinsic function "Ref" to a resource property

## SYNTAX

```
Add-FnRef [-Ref] <String>
```

## DESCRIPTION
The intrinsic function Ref returns the value of the specified parameter or resource.

    * When you specify a parameter's logical name, it returns the value of the parameter.
    * When you specify a resource's logical name, it returns a value that you can typically use to refer to that resource, such as a physical ID.
    
When you are declaring a resource in a template and you need to specify another template resource by name, you can use the Ref to refer to that other resource.
In general, Ref returns the name of the resource.
For example, a reference to an AWS::AutoScaling::AutoScalingGroup returns the name of that Auto Scaling group resource.

For some resources, an identifier is returned that has another significant meaning in the context of the resource.
An AWS::EC2::EIP resource, for instance, returns the IP address, and an AWS::EC2::Instance returns the instance ID.

    Tip
        You can also use Ref to add values to Output messages.

## PARAMETERS

### -Ref
The logical name of the resource or parameter you want to reference.

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

## INPUTS

## OUTPUTS

### VaporShell.Function.Ref

## NOTES
You cannot use any functions in the Ref function.
You must specify a string that is a resource logical ID.

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ref.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ref.html)

