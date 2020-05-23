function Add-VSEC2LocalGatewayRouteTableVPCAssociationTags {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::LocalGatewayRouteTableVPCAssociation.Tags resource property to the template. The tags assigned to the association.

    .DESCRIPTION
        Adds an AWS::EC2::LocalGatewayRouteTableVPCAssociation.Tags resource property to the template.
The tags assigned to the association.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-localgatewayroutetablevpcassociation-tags.html

    .PARAMETER Tags
        The tags assigned to the association.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-localgatewayroutetablevpcassociation-tags.html#cfn-ec2-localgatewayroutetablevpcassociation-tags-tags
        UpdateType: Mutable
        Type: List
        ItemType: Tag
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.LocalGatewayRouteTableVPCAssociation.Tags')]
    [cmdletbinding()]
    Param
    (
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $false)]
        $Tags
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.LocalGatewayRouteTableVPCAssociation.Tags'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
