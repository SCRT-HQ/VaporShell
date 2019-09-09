# Add-VSIAMRolePolicy

## SYNOPSIS
Adds an AWS::IAM::Role.Policy resource property to the template.
Contains information about an attached policy.

## SYNTAX

```
Add-VSIAMRolePolicy [-PolicyDocument] <Object> [-PolicyName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IAM::Role.Policy resource property to the template.
Contains information about an attached policy.

An attached policy is a managed policy that has been attached to a user, group, or role.

For more information about managed policies, refer to Managed Policies and Inline Policies: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html in the *Using IAM* guide.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -PolicyDocument
The policy document.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument
PrimitiveType: Json
UpdateType: Mutable

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

### -PolicyName
The friendly name not ARN identifying the policy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IAM.Role.Policy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html)

