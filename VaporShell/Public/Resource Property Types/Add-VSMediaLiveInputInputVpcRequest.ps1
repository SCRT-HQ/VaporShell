function Add-VSMediaLiveInputInputVpcRequest {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Input.InputVpcRequest resource property to the template. The settings for an Amazon VPC input.

    .DESCRIPTION
        Adds an AWS::MediaLive::Input.InputVpcRequest resource property to the template.
The settings for an Amazon VPC input.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html

    .PARAMETER SecurityGroupIds
        The list of up to five VPC security group IDs to attach to the input VPC network interfaces. The security groups require subnet IDs. If none are specified, MediaLive uses the VPC default security group.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-securitygroupids
        UpdateType: Mutable

    .PARAMETER SubnetIds
        The list of two VPC subnet IDs from the same VPC. You must associate subnet IDs to two unique Availability Zones.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-subnetids
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Input.InputVpcRequest')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Input.InputVpcRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
