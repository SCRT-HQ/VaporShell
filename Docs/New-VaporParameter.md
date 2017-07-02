---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html
schema: 2.0.0
---

# New-VaporParameter

## SYNOPSIS
Adds a Parameter object to the template

## SYNTAX

```
New-VaporParameter [-LogicalId] <String> [-Type] <String> [[-Default] <String>] [-NoEcho]
 [[-AllowedPattern] <String>] [[-AllowedValues] <String[]>] [[-ConstraintDescription] <String>]
 [[-Description] <String>] [[-MaxLength] <Int32>] [[-MaxValue] <Int32>] [[-MinLength] <Int32>]
 [[-MinValue] <Int32>]
```

## DESCRIPTION
You can use the optional Parameters section to pass values into your template when you create a stack.
With parameters, you can create templates that are customized each time you create a stack.
Each parameter must contain a value when you create a stack.
You can specify a default value to make the parameter optional so that you don't need to pass in a value when creating a stack.
AWS CloudFormation will use the default value.
For more information about creating stacks, see Working with Stacks.

The Parameters section consists of the key name Parameters.
You can have a maximum of 60 parameters in an AWS CloudFormation template.

For each parameter, you must declare a logical name, which must be alphanumeric and unique among all logical names within the template.
After you declare the parameter's logical name, you can specify the parameter's properties.
You must declare parameters as one of following types: `String`, `Number`, `CommaDelimitedList`, or an AWS-specific type.
For String, Number, and AWS-specific parameter types, you can define constraints that AWS CloudFormation uses to validate the value of the parameter.

* AWS-specific parameter types are AWS values such as Amazon EC2 key pair names and VPC IDs.
* AWS CloudFormation validates these parameter values against existing values in users' AWS accounts.
* AWS-specific parameter types are helpful in catching invalid values at the start of creating or updating a stack.  


        ** Important **  
            For sensitive parameter values (such as passwords), set the NoEcho property to true. That way, whenever anyone describes your stack, the parameter value is shown as asterisks (*****).

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
$template = Initialize-Vaporshell -Description "Testing Mapping addition"

$template.AddParameter(
    (New-VaporParameter -LogicalId "DBPort" -Default 3306 -Description "TCP/IP port for the Propertiesbase" -Type "Number" -MinValue 1150 -MaxValue 65535),
    (New-VaporParameter -LogicalId "DBPwd" -NoEcho -Description "The Propertiesbase admin account password" -Type "String" -MinLength 1 -MaxLength 41 -AllowedPattern "^\[a-zA-Z0-9\]*$")
)
```

**When the template is exported, this will convert to:** 
```json
{
    "AWSTemplateFormatVersion":  "2010-09-09",
    "Description":  "Testing Mapping addition",
    "Parameters":  {
        "DBPwd":  {
            "Type":  "String",
            "NoEcho":  {
                "IsPresent":  true
            },
            "Description":  "The Propertiesbase admin account password",
            "MinLength":  1,
            "MaxLength":  41,
            "AllowedPattern":  "^[a-zA-Z0-9]*$"
        },
        "DBPort":  {
            "Type":  "Number",
            "Default":  "3306",
            "Description":  "TCP/IP port for the Propertiesbase",
            "MinValue":  1150,
            "MaxValue":  65535
        }
    }
}
```

## PARAMETERS

### -LogicalId
An identifier for the current condition.
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

### -Type
The Properties type for the parameter (PropertiesType).

Required: Yes

You can specify the following values for the Type property:

#### String 
_A literal string._  
`For example, users could specify "MyUserName".`

#### Number
_An integer or float._  
AWS CloudFormation validates the parameter value as a number; however, when you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a string.

`For example, users could specify "8888".`

#### List\<Number\>
_An array of integers or floats that are separated by commas._  
AWS CloudFormation validates the parameter value as numbers; however, when you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a list of strings.

`For example, users could specify "80,20", and a Ref will result in ["80","20"].`

#### CommaDelimitedList
An array of literal strings that are separated by commas. The total number of strings should be one more than the total number of commas. Also, each member string is space trimmed.

`For example, users could specify "test,dev,prod", and a Ref will result in ["test","dev","prod"].`

#### AWS-Specific Parameter Types

For AWS-specific parameter types, template users must specify existing AWS values that are in their account.

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

### -Default
A value of the appropriate type for the template to use if no value is specified when a stack is created.
If you define constraints for the parameter, you must specify a value that adheres to those constraints.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoEcho
Whether to mask the parameter value whenever anyone makes a call that describes the stack.
If you set the value to true, the parameter value is masked with asterisks (*****).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedPattern
A regular expression that represents the patterns you want to allow for String types.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedValues
An array containing the list of values allowed for the parameter.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConstraintDescription
A string that explains the constraint when the constraint is violated.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
A string of up to 4000 characters that describes the parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxLength
An integer value that determines the largest number of characters you want to allow for String types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxValue
A numeric value that determines the largest numeric value you want to allow for Number types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinLength
An integer value that determines the smallest number of characters you want to allow for String types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 11
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinValue
A numeric value that determines the smallest numeric value you want to allow for Number types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 12
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Parameter

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html)

