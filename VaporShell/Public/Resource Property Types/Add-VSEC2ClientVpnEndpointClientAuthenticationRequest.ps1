function Add-VSEC2ClientVpnEndpointClientAuthenticationRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::ClientVpnEndpoint.ClientAuthenticationRequest resource property to the template. Describes the authentication method to be used by a Client VPN endpoint. Client VPN supports Active Directory and mutual authentication. For more information, see Authentication: https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/authentication-authrization.html#client-authentication in the *AWS Client VPN Administrator Guide*.

    .DESCRIPTION
        Adds an AWS::EC2::ClientVpnEndpoint.ClientAuthenticationRequest resource property to the template.
Describes the authentication method to be used by a Client VPN endpoint. Client VPN supports Active Directory and mutual authentication. For more information, see Authentication: https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/authentication-authrization.html#client-authentication in the *AWS Client VPN Administrator Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html

    .PARAMETER MutualAuthentication
        Information about the authentication certificates to be used, if applicable. You must provide this information if **Type** is certificate-authentication.

        Type: CertificateAuthenticationRequest
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-mutualauthentication
        UpdateType: Mutable

    .PARAMETER Type
        The type of client authentication to be used. Specify certificate-authentication to use certificate-based authentication, or directory-service-authentication to use Active Directory authentication.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER FederatedAuthentication
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: FederatedAuthenticationRequest
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-federatedauthentication
        UpdateType: Mutable

    .PARAMETER ActiveDirectory
        Information about the Active Directory to be used, if applicable. You must provide this information if **Type** is directory-service-authentication.

        Type: DirectoryServiceAuthenticationRequest
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-activedirectory
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.ClientVpnEndpoint.ClientAuthenticationRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MutualAuthentication,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,
        [parameter(Mandatory = $false)]
        $FederatedAuthentication,
        [parameter(Mandatory = $false)]
        $ActiveDirectory
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.ClientVpnEndpoint.ClientAuthenticationRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
