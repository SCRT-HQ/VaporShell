# Add-VSBatchJobDefinitionVolumes

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.Volumes resource property to the template.
A list of volumes associated with the job.

## SYNTAX

```
Add-VSBatchJobDefinitionVolumes [[-Host] <Object>] [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.Volumes resource property to the template.
A list of volumes associated with the job.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Host
The contents of the host parameter determine whether your data volume persists on the host container instance and where it is stored.
If the host parameter is empty, then the Docker daemon assigns a host path for your data volume.
However, the data is not guaranteed to persist after the containers associated with it stop running.

Type: VolumesHost
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-host
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

### -Name
The name of the volume.
Up to 255 letters uppercase and lowercase, numbers, hyphens, and underscores are allowed.
This name is referenced in the sourceVolume parameter of container definition mountPoints.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-name
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.JobDefinition.Volumes
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html)

