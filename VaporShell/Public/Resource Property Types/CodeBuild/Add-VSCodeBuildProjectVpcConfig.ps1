function Add-VSCodeBuildProjectVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.VpcConfig resource property to the template. VpcConfig is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that enable AWS CodeBuild to access resources in an Amazon VPC. For more information, see Use AWS CodeBuild with Amazon Virtual Private Cloud: https://docs.aws.amazon.com/codebuild/latest/userguide/vpc-support.html in the *AWS CodeBuild User Guide*.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.VpcConfig resource property to the template.
VpcConfig is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that enable AWS CodeBuild to access resources in an Amazon VPC. For more information, see Use AWS CodeBuild with Amazon Virtual Private Cloud: https://docs.aws.amazon.com/codebuild/latest/userguide/vpc-support.html in the *AWS CodeBuild User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html

    .PARAMETER Subnets
        A list of one or more subnet IDs in your Amazon VPC. The maximum count is 16.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-subnets
        UpdateType: Mutable

    .PARAMETER VpcId
        The ID of the Amazon VPC.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-vpcid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER SecurityGroupIds
        A list of one or more security groups IDs in your Amazon VPC. The maximum count is 5.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-securitygroupids
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.VpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Subnets,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VpcId,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
