function Add-VSEC2VPNConnectionVpnTunnelOptionsSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification resource property to the template. The tunnel options for a single VPN tunnel.

    .DESCRIPTION
        Adds an AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification resource property to the template.
The tunnel options for a single VPN tunnel.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html

    .PARAMETER PreSharedKey
        The pre-shared key PSK to establish initial authentication between the virtual private gateway and customer gateway.
Constraints: Allowed characters are alphanumeric characters, periods ., and underscores _. Must be between 8 and 64 characters in length and cannot start with zero 0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-presharedkey
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER TunnelInsideCidr
        The range of inside IP addresses for the tunnel. Any specified CIDR blocks must be unique across all VPN connections that use the same virtual private gateway.
Constraints: A size /30 CIDR block from the 169.254.0.0/16 range. The following CIDR blocks are reserved and cannot be used:
+  169.254.0.0/30
+  169.254.1.0/30
+  169.254.2.0/30
+  169.254.3.0/30
+  169.254.4.0/30
+  169.254.5.0/30
+  169.254.169.252/30

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-tunnelinsidecidr
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.VPNConnection.VpnTunnelOptionsSpecification')]
    [cmdletbinding()]
    Param
    (
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
        $PreSharedKey,
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
        $TunnelInsideCidr
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.VPNConnection.VpnTunnelOptionsSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
