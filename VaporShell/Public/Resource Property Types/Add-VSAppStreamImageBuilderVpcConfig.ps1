function Add-VSAppStreamImageBuilderVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppStream::ImageBuilder.VpcConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::AppStream::ImageBuilder.VpcConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html

    .PARAMETER SecurityGroupIds
        PrimitiveItemType: String    
        Type: List    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-securitygroupids    
        UpdateType: Mutable    

    .PARAMETER SubnetIds
        PrimitiveItemType: String    
        Type: List    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-subnetids    
        UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppStream.ImageBuilder.VpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecurityGroupIds,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppStream.ImageBuilder.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
