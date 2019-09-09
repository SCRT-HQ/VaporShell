function Add-VSSageMakerModelVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Model.VpcConfig resource property to the template. Specifies a VPC that your training jobs and hosted models have access to. Control access to and from your training and model containers by configuring the VPC. For more information, see Protect Endpoints by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html and Protect Training Jobs by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html.

    .DESCRIPTION
        Adds an AWS::SageMaker::Model.VpcConfig resource property to the template.
Specifies a VPC that your training jobs and hosted models have access to. Control access to and from your training and model containers by configuring the VPC. For more information, see Protect Endpoints by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html and Protect Training Jobs by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html

    .PARAMETER Subnets
        The ID of the subnets in the VPC to which you want to connect your training job or model.
Amazon EC2 P3 accelerated computing instances are not available in the c/d/e availability zones of region us-east-1. If you want to create endpoints with P3 instances in VPC mode in region us-east-1, create subnets in a/b/f availability zones instead.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-subnets
        UpdateType: Immutable

    .PARAMETER SecurityGroupIds
        The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the Subnets field.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-securitygroupids
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Model.VpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Subnets,
        [parameter(Mandatory = $true)]
        $SecurityGroupIds
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Model.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
