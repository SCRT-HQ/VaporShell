# Add-VSFSxFileSystemSelfManagedActiveDirectoryConfiguration

## SYNOPSIS
Adds an AWS::FSx::FileSystem.SelfManagedActiveDirectoryConfiguration resource property to the template.
The configuration that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises Microsoft Active Directory (AD directory.

## SYNTAX

```
Add-VSFSxFileSystemSelfManagedActiveDirectoryConfiguration [[-FileSystemAdministratorsGroup] <Object>]
 [[-UserName] <Object>] [[-DomainName] <Object>] [[-OrganizationalUnitDistinguishedName] <Object>]
 [[-DnsIps] <Object>] [[-Password] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::FSx::FileSystem.SelfManagedActiveDirectoryConfiguration resource property to the template.
The configuration that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises Microsoft Active Directory (AD directory.

## PARAMETERS

### -FileSystemAdministratorsGroup
Optional The name of the domain group whose members are granted administrative privileges for the file system.
Administrative privileges include taking ownership of files and folders, setting audit controls audit ACLs on files and folders, and administering the file system remotely by using the FSx Remote PowerShell.
The group that you specify must already exist in your domain.
If you don't provide one, your AD domain's Domain Admins group is used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-filesystemadministratorsgroup
PrimitiveType: String
UpdateType: Immutable

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

### -UserName
The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain.
This account must have the permission to join computers to the domain in the organizational unit provided in OrganizationalUnitDistinguishedName, or in the default location of your AD domain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-username
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

### -DomainName
The fully qualified domain name of the self-managed AD directory, such as corp.example.com.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-domainname
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OrganizationalUnitDistinguishedName
Optional The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join.
Amazon FSx only accepts OU as the direct parent of the file system.
An example is OU=FSx,DC=yourdomain,DC=corp,DC=com.
To learn more, see RFC 2253: https://tools.ietf.org/html/rfc2253.
If none is provided, the FSx file system is created in the default location of your self-managed AD directory.
Only Organizational Unit OU objects can be the direct parent of the file system that you're creating.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-organizationalunitdistinguishedname
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DnsIps
A list of up to two IP addresses of DNS servers or domain controllers in the self-managed AD directory.
The IP addresses need to be either in the same VPC CIDR range as the one in which your Amazon FSx file system is being created, or in the private IP version 4 IPv4 address ranges, as specified in RFC 1918: http://www.faqs.org/rfcs/rfc1918.html:
+ 10.0.0.0 - 10.255.255.255 10/8 prefix
+ 172.16.0.0 - 172.31.255.255 172.16/12 prefix
+ 192.168.0.0 - 192.168.255.255 192.168/16 prefix

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-dnsips
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain.
We strongly suggest that you follow best practices and *do not* embed passwords in your CFN templates.
The recommended approach is to use AWS Secrets Manager to store your passwords.
You can retrieve them for use in your templates using the secretsmanager dynamic reference.
There are additional costs associated with using AWS Secrets Manager.
To learn more, see Secrets Manager Secrets: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/dynamic-references.html#dynamic-references-secretsmanager in the *AWS CloudFormation User Guide*.
Alternatively, you can use the NoEcho property to obfuscate the password parameter value.
For more information, see Do Not Embed Credentials in Your Templates: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#creds in the *AWS CloudFormation User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-password
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.FSx.FileSystem.SelfManagedActiveDirectoryConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html)

