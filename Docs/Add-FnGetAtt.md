---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html
schema: 2.0.0
---

# Add-FnGetAtt

## SYNOPSIS
Adds the intrinsic function "Fn::GetAtt" to a resource property

## SYNTAX

```
Add-FnGetAtt [-LogicalNameOfResource] <String> [-AttributeName] <Object>
```

## DESCRIPTION
The Fn::GetAtt intrinsic function returns the value of an attribute from a resource in the template.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Add-FnGetAtt -LogicalNameOfResource "MyLB" -AttributeName "DNSName"
```

**When the template is exported, this will convert to:** 
```json
{"Fn::GetAtt":["MyLB","DNSName"]}
```

## PARAMETERS

### -LogicalNameOfResource
The logical name of the resource that contains the attribute that you want.

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

### -AttributeName
The name of the resource-specific attribute whose value you want.
See the resource's reference page for details about the attributes available for that resource type.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Function.GetAtt

## NOTES
For the Fn::GetAtt logical resource name, you cannot use functions.
You must specify a string that is a resource's logical ID.

For the Fn::GetAtt attribute name, you can use the Ref function.

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html)

