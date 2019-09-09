# New-VSS3Object

## SYNOPSIS
Uploads an object to S3

## SYNTAX

```
New-VSS3Object [-BucketName] <String> [-CannedACL <String>] [-ContentBody <String>] [-FilePath <String>]
 [-Key <String>] [-KMSKeyId <String>] [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BucketName
The name of the bucket to contain the object.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CannedACL
The canned access control list (CACL) to apply to the object.
Valid options are: "NoACL","Private","PublicRead","PublicReadWrite","AuthenticatedRead","AWSExecRead","BucketOwnerRead","BucketOwnerFullControl","LogDeliveryWrite"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentBody
Text content to be uploaded.
Use this property if you want to upload plaintext to S3.
The content type will be set to 'text/plain'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilePath
The full path and name to a file to be uploaded.
If this is set the request will upload the specified file to S3.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Key
The key used to identify the object in S3.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KMSKeyId
The id of the AWS Key Management Service key that Amazon S3 should use to encrypt and decrypt the object.
If a key id is not specified, the default key will be used for encryption and decryption.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
