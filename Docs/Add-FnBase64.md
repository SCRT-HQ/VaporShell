---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html
schema: 2.0.0
---

# Add-FnBase64

## SYNOPSIS
Adds the intrinsic function "Fn::Base64" to a resource property

## SYNTAX

```
Add-FnBase64 [-ValueToEncode] <Object>
```

## DESCRIPTION
The intrinsic function Fn::Base64 returns the Base64 representation of the input string.
This function is typically used to pass encoded data to Amazon EC2 instances by way of the UserData property.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Add-FnBase64 -ValueToEncode "AWS CloudFormation"
```

**When the template is exported, this will convert to:** 
```json
{"Fn::Base64":"AWS CloudFormation"}
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Add-FnBase64 -ValueToEncode (Add-FnRef "$_AWSRegion")
```

**When the template is exported, this will convert to:** 
```json
{"Fn::Base64":{"Ref":"AWS::Region"}}
```

## PARAMETERS

### -ValueToEncode
The string value you want to convert to Base64.

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

## INPUTS

## OUTPUTS

### Vaporshell.Function.Base64

## NOTES
You can use any function that returns a string inside the Fn::Base64 function.

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html)

