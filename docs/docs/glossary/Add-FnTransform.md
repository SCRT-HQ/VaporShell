# Add-FnTransform

## SYNOPSIS
Adds the intrinsic function "Fn::Transform" to a resource property

## SYNTAX

```
Add-FnTransform [-Name] <String> [-Parameters] <Hashtable> [<CommonParameters>]
```

## DESCRIPTION
The intrinsic function Fn::Transform specifies a macro to perform custom processing on part of a stack template.
Macros enable you to perform custom processing on templates, from simple actions like find-and-replace operations to extensive transformations of entire templates.
For more information, see Using AWS CloudFormation Macros to Perform Custom Processing on Templates.

You can also use Fn::Transform to call the AWS::Include Transform transform, which is a macro hosted by AWS CloudFormation.

## EXAMPLES

### EXAMPLE 1
```
Add-FnTransform -Name "AWS::Include" -Parameters @{Location = (Add-FnRef "InputValue")}
```

This example calls the AWS::Include transform, specifying that the location to retrieve a template snippet from is passed in the InputValue parameter.

When the template is exported, this will convert to:
    {
        "Fn::Transform" : {
            "Name" : "AWS::Include",
            "Parameters" : {
                "Location" : { "Ref" : "InputValue" }
            }
        }
    }

## PARAMETERS

### -Name
The name of the macro you want to perform the processing.

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

### -Parameters
The list parameters, specified as a hashtable, to pass to the macro.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Function.Transform
## NOTES
AWS CloudFormation passes any intrinsic function calls included in Fn::Transform to the specified macro as literal strings.
For more information, see AWS CloudFormation Macro Function Interface.

## RELATED LINKS

[https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html)

