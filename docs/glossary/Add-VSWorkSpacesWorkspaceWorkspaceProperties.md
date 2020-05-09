# Add-VSWorkSpacesWorkspaceWorkspaceProperties

## SYNOPSIS
Adds an AWS::WorkSpaces::Workspace.WorkspaceProperties resource property to the template.
Information about a WorkSpace.

## SYNTAX

```
Add-VSWorkSpacesWorkspaceWorkspaceProperties [[-ComputeTypeName] <Object>] [[-RootVolumeSizeGib] <Object>]
 [[-RunningMode] <Object>] [[-RunningModeAutoStopTimeoutInMinutes] <Object>] [[-UserVolumeSizeGib] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WorkSpaces::Workspace.WorkspaceProperties resource property to the template.
Information about a WorkSpace.

## PARAMETERS

### -ComputeTypeName
The compute type.
For more information, see Amazon WorkSpaces Bundles: http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-computetypename
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

### -RootVolumeSizeGib
The size of the root volume.
For important information about how to modify the size of the root and user volumes, see Modify a WorkSpace: https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-rootvolumesizegib
PrimitiveType: Integer
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

### -RunningMode
The running mode.
For more information, see Manage the WorkSpace Running Mode: https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmode
PrimitiveType: String
UpdateType: Mutable

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

### -RunningModeAutoStopTimeoutInMinutes
The time after a user logs off when WorkSpaces are automatically stopped.
Configured in 60-minute intervals.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmodeautostoptimeoutinminutes
PrimitiveType: Integer
UpdateType: Mutable

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

### -UserVolumeSizeGib
The size of the user storage.
For important information about how to modify the size of the root and user volumes, see Modify a WorkSpace: https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-uservolumesizegib
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WorkSpaces.Workspace.WorkspaceProperties
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html)

