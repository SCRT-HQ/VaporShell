# Add-VSBatchJobDefinitionVolumesHost

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.VolumesHost resource property to the template.
Determine whether your data volume persists on the host container instance and where it is stored.
If this parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.

## SYNTAX

```
Add-VSBatchJobDefinitionVolumesHost [[-SourcePath] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.VolumesHost resource property to the template.
Determine whether your data volume persists on the host container instance and where it is stored.
If this parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SourcePath
The path on the host container instance that is presented to the container.
If this parameter is empty, then the Docker daemon has assigned a host path for you.
If this parameter contains a file location, then the data volume persists at the specified location on the host container instance until you delete it manually.
If the source path location does not exist on the host container instance, the Docker daemon creates it.
If the location does exist, the contents of the source path folder are exported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html#cfn-batch-jobdefinition-volumeshost-sourcepath
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.JobDefinition.VolumesHost
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html)

