# Add-VSBatchJobDefinitionMountPoints

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.MountPoints resource property to the template.
Details on a Docker volume mount point that is used in a job's container properties.
This parameter maps to Volumes in the Create a container: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.19/#create-a-container section of the Docker Remote API and the --volume option to docker run.

## SYNTAX

```
Add-VSBatchJobDefinitionMountPoints [[-ReadOnly] <Object>] [[-SourceVolume] <Object>]
 [[-ContainerPath] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.MountPoints resource property to the template.
Details on a Docker volume mount point that is used in a job's container properties.
This parameter maps to Volumes in the Create a container: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.19/#create-a-container section of the Docker Remote API and the --volume option to docker run.

## PARAMETERS

### -ReadOnly
If this value is true, the container has read-only access to the volume; otherwise, the container can write to the volume.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-readonly
PrimitiveType: Boolean
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

### -SourceVolume
The name of the volume to mount.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-sourcevolume
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

### -ContainerPath
The path on the container at which to mount the host volume.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-containerpath
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.JobDefinition.MountPoints
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html)

