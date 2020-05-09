# Add-VSEFSFileSystemElasticFileSystemTag

## SYNOPSIS
Adds an AWS::EFS::FileSystem.ElasticFileSystemTag resource property to the template.
A tag is a key-value pair attached to a file system.
Allowed characters in the Key and Value properties are letters, white space, and numbers that can be represented in UTF-8, and the following characters: + - = .
_ : /

## SYNTAX

```
Add-VSEFSFileSystemElasticFileSystemTag [-Key] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EFS::FileSystem.ElasticFileSystemTag resource property to the template.
A tag is a key-value pair attached to a file system.
Allowed characters in the Key and Value properties are letters, white space, and numbers that can be represented in UTF-8, and the following characters: + - = .
_ : /

## PARAMETERS

### -Key
The tag key String.
The key can't start with aws:.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html#cfn-efs-filesystem-filesystemtags-key
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The value of the tag key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html#cfn-efs-filesystem-filesystemtags-value
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EFS.FileSystem.ElasticFileSystemTag
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html)

