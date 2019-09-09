# Add-VSCodeBuildProjectVpcConfig

## SYNOPSIS
Adds an AWS::CodeBuild::Project.VpcConfig resource property to the template.
VpcConfig is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that enable AWS CodeBuild to access resources in an Amazon VPC.
For more information, see Use AWS CodeBuild with Amazon Virtual Private Cloud: https://docs.aws.amazon.com/codebuild/latest/userguide/vpc-support.html in the *AWS CodeBuild User Guide*.

## SYNTAX

```
Add-VSCodeBuildProjectVpcConfig [[-Subnets] <Object>] [[-VpcId] <Object>] [[-SecurityGroupIds] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.VpcConfig resource property to the template.
VpcConfig is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that enable AWS CodeBuild to access resources in an Amazon VPC.
For more information, see Use AWS CodeBuild with Amazon Virtual Private Cloud: https://docs.aws.amazon.com/codebuild/latest/userguide/vpc-support.html in the *AWS CodeBuild User Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Subnets
A list of one or more subnet IDs in your Amazon VPC.
The maximum count is 16.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-subnets
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

### -VpcId
The ID of the Amazon VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-vpcid
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

### -SecurityGroupIds
A list of one or more security groups IDs in your Amazon VPC.
The maximum count is 5.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-securitygroupids
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.VpcConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html)

