# Add-VSTransferUserHomeDirectoryMapEntry

## SYNOPSIS
Adds an AWS::Transfer::User.HomeDirectoryMapEntry resource property to the template.
Represents an object that contains entries and targets for HomeDirectoryMappings.

## SYNTAX

```
Add-VSTransferUserHomeDirectoryMapEntry [-Entry] <Object> [-Target] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Transfer::User.HomeDirectoryMapEntry resource property to the template.
Represents an object that contains entries and targets for HomeDirectoryMappings.

## PARAMETERS

### -Entry
Represents an entry and a target for HomeDirectoryMappings.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-homedirectorymapentry.html#cfn-transfer-user-homedirectorymapentry-entry
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

### -Target
Represents the map target that is used in a HomeDirectorymapEntry.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-homedirectorymapentry.html#cfn-transfer-user-homedirectorymapentry-target
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

### Vaporshell.Resource.Transfer.User.HomeDirectoryMapEntry
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-homedirectorymapentry.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-homedirectorymapentry.html)

