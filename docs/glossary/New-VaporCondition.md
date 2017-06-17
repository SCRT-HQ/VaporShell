---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/conditions-section-structure.html
schema: 2.0.0
---

# New-VaporCondition

## SYNOPSIS
Adds a Condition object to the template

## SYNTAX

```
New-VaporCondition [-LogicalId] <String> [-Condition] <Object>
```

## DESCRIPTION
The optional Conditions section includes statements that define when a resource is created or when a property is defined.
For example, you can compare whether a value is equal to another value.
Based on the result of that condition, you can conditionally create resources.
If you have multiple conditions, separate them with commas.

You might use conditions when you want to reuse a template that can create resources in different contexts, such as a test environment versus a production environment.
In your template, you can add an EnvironmentType input parameter, which accepts either prod or test as inputs.
For the production environment, you might include Amazon EC2 instances with certain capabilities; however, for the test environment, you want to use reduced capabilities to save money.
With conditions, you can define which resources are created and how they're configured for each environment type.

Conditions are evaluated based on input parameter values that you specify when you create or update a stack.
Within each condition, you can reference another condition, a parameter value, or a mapping.
After you define all your conditions, you can associate them with resources and resource properties in the Resources and Outputs sections of a template.

At stack creation or stack update, AWS CloudFormation evaluates all the conditions in your template before creating any resources.
Any resources that are associated with a true condition are created.
Any resources that are associated with a false condition are ignored.

** Important **
    During a stack update, you cannot update conditions by themselves.
You can update conditions only when you include changes that add, modify, or delete resources.

To conditionally create resources, you must include statements in at least three different sections of a template:

    Parameters section
        Define the input values that you want to evaluate in your conditions.
Conditions will result in true or false based on values from these input parameter.

    Conditions section
        Define conditions by using the intrinsic condition functions.
These conditions determine when AWS CloudFormation creates the associated resources.

    Resources and Outputs sections
        Associate conditions with the resources or outputs that you want to conditionally create.
AWS CloudFormation creates entities that are associated with a true condition and ignores entities that are associated with a false condition.
Use the Condition key and a condition's logical ID to associate it with a resource or output.
To conditionally specify a property, use the Fn::If function.
For more information, see Condition Functions.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$template = Initialize-Vaporshell -Description "Testing Condition addition"
```

$template.AddResource((
    New-VaporCondition -LogicalId "CreateProdResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvType") -SecondValue "prod")
))

When the template is exported, this will convert to: 
    {
        "AWSTemplateFormatVersion":  "2010-09-09",
        "Description":  "Testing Condition addition",
        "Conditions":  {
            "CreateProdResources":  {
                "Fn::Equals":  \[
                    {
                        "Ref":  "EnvType"
                    },
                    "prod"
                \]
            }
        }
    }

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

### -Condition
Logical ID of the condition that this resource needs to be true in order to be provisioned.

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

### Vaporshell.Condition

## NOTES
You can use the following intrinsic functions to define conditions:
    Fn::And
    Fn::Equals
    Fn::If
    Fn::Not
    Fn::Or

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/conditions-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/conditions-section-structure.html)

