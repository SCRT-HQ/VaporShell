function Add-VSLambdaFunctionVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::Function.VpcConfig resource property to the template. The VPC security groups and subnets that are attached to a Lambda function.

    .DESCRIPTION
        Adds an AWS::Lambda::Function.VpcConfig resource property to the template.
The VPC security groups and subnets that are attached to a Lambda function.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html

    .PARAMETER SecurityGroupIds
        A list of VPC security groups IDs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER SubnetIds
        A list of VPC subnet IDs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.Function.VpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SecurityGroupIds,
        [parameter(Mandatory = $true)]
        $SubnetIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.Function.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
