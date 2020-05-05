function Add-VSGroundStationDataflowEndpointGroupSecurityDetails {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::DataflowEndpointGroup.SecurityDetails resource property to the template. Information about IAM roles, subnets, and security groups needed for this DataflowEndpointGroup.

    .DESCRIPTION
        Adds an AWS::GroundStation::DataflowEndpointGroup.SecurityDetails resource property to the template.
Information about IAM roles, subnets, and security groups needed for this DataflowEndpointGroup.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html

    .PARAMETER SubnetIds
        The subnet Ids of the security details, such as subnet-12345678.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html#cfn-groundstation-dataflowendpointgroup-securitydetails-subnetids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SecurityGroupIds
        The security group Ids of the security role, such as sg-1234567890abcdef0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html#cfn-groundstation-dataflowendpointgroup-securitydetails-securitygroupids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER RoleArn
        The ARN of a role which Ground Station has permission to assume, such as arn:aws:iam::1234567890:role/DataDeliveryServiceRole.
Ground Station will assume this role and create an ENI in your VPC on the specified subnet upon creation of a dataflow endpoint group. This ENI is used as the ingress/egress point for data streamed during a satellite contact.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html#cfn-groundstation-dataflowendpointgroup-securitydetails-rolearn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GroundStation.DataflowEndpointGroup.SecurityDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SubnetIds,
        [parameter(Mandatory = $false)]
        $SecurityGroupIds,
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
        $RoleArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.DataflowEndpointGroup.SecurityDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
