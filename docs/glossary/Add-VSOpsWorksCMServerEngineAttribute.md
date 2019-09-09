# Add-VSOpsWorksCMServerEngineAttribute

## SYNOPSIS
Adds an AWS::OpsWorksCM::Server.EngineAttribute resource property to the template.
The EngineAttribute property type specifies administrator credentials for an AWS OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server.
EngineAttribute is a property of the AWS::OpsWorksCM::Server resource type.

## SYNTAX

```
Add-VSOpsWorksCMServerEngineAttribute [[-Value] <Object>] [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorksCM::Server.EngineAttribute resource property to the template.
The EngineAttribute property type specifies administrator credentials for an AWS OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server.
EngineAttribute is a property of the AWS::OpsWorksCM::Server resource type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Value
The value of the engine attribute.
**Attribute value for Chef Automate servers:**
+  CHEF_AUTOMATE_PIVOTAL_KEY: A base64-encoded RSA public key.
The corresponding private key is required to access the Chef API.
You can generate this key by running the following OpenSSL: https://www.openssl.org/ command on Linux-based computers.
openssl genrsa -out pivotal_key_file_name.pem 2048
On Windows-based computers, you can use the PuTTYgen utility to generate a base64-encoded RSA private key.
For more information, see PuTTYgen - Key Generator for PuTTY on Windows: https://www.ssh.com/ssh/putty/windows/puttygen on SSH.com.
**Attribute values for Puppet Enterprise servers:**
+  PUPPET_ADMIN_PASSWORD: An administrator password that you can use to sign in to the Puppet Enterprise console webpage after the server is online.
The password must use between 8 and 32 ASCII characters.
+  PUPPET_R10K_REMOTE: The r10k remote is the URL of your control repository for example, ssh://git@your.git-repo.com:user/control-repo.git.
Specifying an r10k remote opens TCP port 8170.
+  PUPPET_R10K_PRIVATE_KEY: If you are using a private Git repository, add PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-value
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
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

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.OpsWorksCM.Server.EngineAttribute
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html)

