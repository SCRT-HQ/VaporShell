function Add-VSTransferServerEndpointDetails {
    <#
    .SYNOPSIS
        Adds an AWS::Transfer::Server.EndpointDetails resource property to the template. The virtual private cloud (VPC endpoint settings that are configured for your SFTP server. When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IPs and make it accessible to clients over the internet. You VPC's default security groups are automatically assigned to your endpoint.

    .DESCRIPTION
        Adds an AWS::Transfer::Server.EndpointDetails resource property to the template.
The virtual private cloud (VPC endpoint settings that are configured for your SFTP server. When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IPs and make it accessible to clients over the internet. You VPC's default security groups are automatically assigned to your endpoint.

**Note**

It is recommended that you use VPC as the EndpointType. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with EndpointType set to VPC_ENDPOINT.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html

    .PARAMETER AddressAllocationIds
        A list of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint. This is only valid in the UpdateServer API.
This property can only be used when EndpointType is set to VPC.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-addressallocationids
        UpdateType: Conditional

    .PARAMETER VpcId
        The VPC ID of the virtual private cloud in which the SFTP server's endpoint will be hosted.
This property can only be used when EndpointType is set to VPC.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER VpcEndpointId
        The ID of the VPC endpoint.
This property can only be used when EndpointType is set to VPC_ENDPOINT.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcendpointid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER SubnetIds
        A list of subnet IDs that are required to host your SFTP server endpoint in your VPC.
This property can only be used when EndpointType is set to VPC.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-subnetids
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Transfer.Server.EndpointDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AddressAllocationIds,
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
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VpcEndpointId,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Transfer.Server.EndpointDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
