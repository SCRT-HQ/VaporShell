# Add-VSECRRepositoryLifecyclePolicy

## SYNOPSIS
Adds an AWS::ECR::Repository.LifecyclePolicy resource property to the template.
The LifecyclePolicy property type specifies a lifecycle policy.
For information about lifecycle policy syntax, see Lifecycle Policy Template: https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html.

## SYNTAX

```
Add-VSECRRepositoryLifecyclePolicy [[-LifecyclePolicyText] <Object>] [[-RegistryId] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECR::Repository.LifecyclePolicy resource property to the template.
The LifecyclePolicy property type specifies a lifecycle policy.
For information about lifecycle policy syntax, see Lifecycle Policy Template: https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html.

## PARAMETERS

### -LifecyclePolicyText
The JSON repository policy text to apply to the repository.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-lifecyclepolicytext
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

### -RegistryId
The AWS account ID associated with the registry that contains the repository.
If you do  not specify a registry, the default registry is assumed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-registryid
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

### Vaporshell.Resource.ECR.Repository.LifecyclePolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html)

