# Add-VSEFSFileSystemLifecyclePolicy

## SYNOPSIS
Adds an AWS::EFS::FileSystem.LifecyclePolicy resource property to the template.
Describes a policy used by EFS lifecycle management to transition files to the Infrequent Access (IA storage class.

## SYNTAX

```
Add-VSEFSFileSystemLifecyclePolicy [-TransitionToIA] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EFS::FileSystem.LifecyclePolicy resource property to the template.
Describes a policy used by EFS lifecycle management to transition files to the Infrequent Access (IA storage class.

## PARAMETERS

### -TransitionToIA
A value that describes the period of time that a file is not accessed, after which it transitions to the IA storage class.
Metadata operations such as listing the contents of a directory don't count as file access events.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html#cfn-elasticfilesystem-filesystem-lifecyclepolicy-transitiontoia
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EFS.FileSystem.LifecyclePolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html)

