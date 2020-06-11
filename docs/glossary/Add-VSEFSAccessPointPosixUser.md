# Add-VSEFSAccessPointPosixUser

## SYNOPSIS
Adds an AWS::EFS::AccessPoint.PosixUser resource property to the template.

## SYNTAX

```
Add-VSEFSAccessPointPosixUser [-Uid] <Object> [-Gid] <Object> [[-SecondaryGids] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EFS::AccessPoint.PosixUser resource property to the template.

## PARAMETERS

### -Uid
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-uid
UpdateType: Immutable
PrimitiveType: String

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

### -Gid
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-gid
UpdateType: Immutable
PrimitiveType: String

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

### -SecondaryGids
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-secondarygids
UpdateType: Immutable
Type: List
PrimitiveItemType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EFS.AccessPoint.PosixUser
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html)

