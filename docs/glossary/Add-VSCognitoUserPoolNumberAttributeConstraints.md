# Add-VSCognitoUserPoolNumberAttributeConstraints

## SYNOPSIS
Adds an AWS::Cognito::UserPool.NumberAttributeConstraints resource property to the template.
The NumberAttributeConstraints property type defines the number attribute constraints of an Amazon Cognito User Pool.
NumberAttributeConstraints is a subproperty of the SchemaAttribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html property type.

## SYNTAX

```
Add-VSCognitoUserPoolNumberAttributeConstraints [[-MinValue] <Object>] [[-MaxValue] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPool.NumberAttributeConstraints resource property to the template.
The NumberAttributeConstraints property type defines the number attribute constraints of an Amazon Cognito User Pool.
NumberAttributeConstraints is a subproperty of the SchemaAttribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MinValue
The minimum value of an attribute that is of the number data type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-minvalue
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxValue
The maximum value of an attribute that is of the number data type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-maxvalue
PrimitiveType: String
UpdateType: Mutable

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
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cognito.UserPool.NumberAttributeConstraints
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html)

