# Add-VSSSMAssociationInstanceAssociationOutputLocation

## SYNOPSIS
Adds an AWS::SSM::Association.InstanceAssociationOutputLocation resource property to the template.
InstanceAssociationOutputLocation is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies an Amazon S3 bucket where you want to store the results of this association request.

## SYNTAX

```
Add-VSSSMAssociationInstanceAssociationOutputLocation [[-S3Location] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::Association.InstanceAssociationOutputLocation resource property to the template.
InstanceAssociationOutputLocation is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies an Amazon S3 bucket where you want to store the results of this association request.

## PARAMETERS

### -S3Location
S3OutputLocation is a property of the InstanceAssociationOutputLocation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html property that specifies an Amazon S3 bucket where you want to store the results of this request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html#cfn-ssm-association-instanceassociationoutputlocation-s3location
UpdateType: Mutable
Type: S3OutputLocation

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SSM.Association.InstanceAssociationOutputLocation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html)

