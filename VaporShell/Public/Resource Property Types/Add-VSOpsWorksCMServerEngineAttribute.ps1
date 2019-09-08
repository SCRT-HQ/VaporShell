function Add-VSOpsWorksCMServerEngineAttribute {
    <#
    .SYNOPSIS
        Adds an AWS::OpsWorksCM::Server.EngineAttribute resource property to the template

    .DESCRIPTION
        Adds an AWS::OpsWorksCM::Server.EngineAttribute resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html

    .PARAMETER Value
        The value of the engine attribute.
**Attribute value for Chef Automate servers:**
+  CHEF_AUTOMATE_PIVOTAL_KEY: A base64-encoded RSA public key. The corresponding private key is required to access the Chef API. You can generate this key by running the following OpenSSL: https://www.openssl.org/ command on Linux-based computers.
openssl genrsa -out pivotal_key_file_name.pem 2048
On Windows-based computers, you can use the PuTTYgen utility to generate a base64-encoded RSA private key. For more information, see PuTTYgen - Key Generator for PuTTY on Windows: https://www.ssh.com/ssh/putty/windows/puttygen on SSH.com.
**Attribute values for Puppet Enterprise servers:**
+  PUPPET_ADMIN_PASSWORD: An administrator password that you can use to sign in to the Puppet Enterprise console webpage after the server is online. The password must use between 8 and 32 ASCII characters.
+  PUPPET_R10K_REMOTE: The r10k remote is the URL of your control repository for example, ssh://git@your.git-repo.com:user/control-repo.git. Specifying an r10k remote opens TCP port 8170.
+  PUPPET_R10K_PRIVATE_KEY: If you are using a private Git repository, add PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-value
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Name
        The name of the engine attribute.
**Attribute name for Chef Automate servers:**
+  CHEF_AUTOMATE_ADMIN_PASSWORD
**Attribute names for Puppet Enterprise servers:**
+  PUPPET_ADMIN_PASSWORD
+  PUPPET_R10K_REMOTE
+  PUPPET_R10K_PRIVATE_KEY

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-name
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpsWorksCM.Server.EngineAttribute')]
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
        $Value,
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorksCM.Server.EngineAttribute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
