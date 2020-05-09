# Get-VSS3ObjectList

## SYNOPSIS
Gets the objects from a specific S3 bucket

## SYNTAX

```
Get-VSS3ObjectList [-BucketName] <String> [-Prefix <String>] [-StartAfter <String>] [-MaxKeys <Int32>]
 [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## PARAMETERS

### -BucketName
The name of the bucket containing the object.

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

### -Prefix
Limits the response to keys that begin with the specified prefix.

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

### -StartAfter
StartAfter is where you want Amazon S3 to start listing from.
Amazon S3 starts listing after this specified key.
StartAfter can be any key in the bucket.

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

### -MaxKeys
Sets the maximum number of keys returned in the response.
The response might contain fewer keys but will never contain more.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
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
