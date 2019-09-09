# Set-VSCredential

## SYNOPSIS
Sets or updates the provided ProfileName on the Shared Credentials file (~\.aws\credentials).

## SYNTAX

```
Set-VSCredential [[-AccessKey] <String>] [[-SecretKey] <String>] [[-Region] <String>] [[-ExternalID] <String>]
 [[-MfaSerial] <String>] [[-RoleArn] <String>] [[-SourceProfile] <String>] [[-Token] <String>]
 [[-ProfileName] <String>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### EXAMPLE 1
```
Set-VSCredential -AccessKey lkjsdfkjio323823kl -SecretKey l38234sdfsdflk+23kjlkfs/skljf_k -Region USWest1
```

## PARAMETERS

### -AccessKey
The access key to be used in the AWSCredentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecretKey
The secret key to use when creating AWSCredentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Region
AWS Region to use with this credential set

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalID
The external id to use in assume role AWSCredentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MfaSerial
The serial number of the MFA to use in assume role AWSCredentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleArn
The role ARN to use when creating assume role or federated AWSCredentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceProfile
When this CredentialProfileOptions object references another CredentialProfile, the name of the referenced CredentialProfile.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
The session token to be used to create AWSCredentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name that you would like to set for this credential profile.
If no ProfileName is provided, it defaults to the AWS_PROFILE environment variable.
If that is not set, it uses "default".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
