# Add-VSEMRClusterScriptBootstrapActionConfig

## SYNOPSIS
Adds an AWS::EMR::Cluster.ScriptBootstrapActionConfig resource property to the template.
ScriptBootstrapActionConfig is a subproperty of the BootstrapActionConfig property type.
ScriptBootstrapActionConfig specifies the arguments and location of the bootstrap script for EMR to run on all cluster nodes before it installs open-source big data applications on them.

## SYNTAX

```
Add-VSEMRClusterScriptBootstrapActionConfig [[-Args] <Object>] [-Path] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.ScriptBootstrapActionConfig resource property to the template.
ScriptBootstrapActionConfig is a subproperty of the BootstrapActionConfig property type.
ScriptBootstrapActionConfig specifies the arguments and location of the bootstrap script for EMR to run on all cluster nodes before it installs open-source big data applications on them.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Args
A list of command line arguments to pass to the bootstrap action script.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html#cfn-elasticmapreduce-cluster-scriptbootstrapactionconfig-args
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Path
Location of the script to run during a bootstrap action.
Can be either a location in Amazon S3 or on a local file system.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html#cfn-elasticmapreduce-cluster-scriptbootstrapactionconfig-path
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

### Vaporshell.Resource.EMR.Cluster.ScriptBootstrapActionConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html)

