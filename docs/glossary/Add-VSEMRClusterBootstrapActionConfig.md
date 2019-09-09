# Add-VSEMRClusterBootstrapActionConfig

## SYNOPSIS
Adds an AWS::EMR::Cluster.BootstrapActionConfig resource property to the template.
BootstrapActionConfig is a property of AWS::EMR::Cluster that can be used to run bootstrap actions on EMR clusters.
You can use a bootstrap action to install software and configure EC2 instances for all cluster nodes before EMR installs and configures open-source big data applications on cluster instances.
For more information, see Create Bootstrap Actions to Install Additional Software: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-bootstrap.html in the *Amazon EMR Management Guide*.

## SYNTAX

```
Add-VSEMRClusterBootstrapActionConfig [-Name] <Object> [-ScriptBootstrapAction] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.BootstrapActionConfig resource property to the template.
BootstrapActionConfig is a property of AWS::EMR::Cluster that can be used to run bootstrap actions on EMR clusters.
You can use a bootstrap action to install software and configure EC2 instances for all cluster nodes before EMR installs and configures open-source big data applications on cluster instances.
For more information, see Create Bootstrap Actions to Install Additional Software: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-bootstrap.html in the *Amazon EMR Management Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Name
The name of the bootstrap action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html#cfn-elasticmapreduce-cluster-bootstrapactionconfig-name
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

### -ScriptBootstrapAction
The script run by the bootstrap action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html#cfn-elasticmapreduce-cluster-bootstrapactionconfig-scriptbootstrapaction
Type: ScriptBootstrapActionConfig
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

### Vaporshell.Resource.EMR.Cluster.BootstrapActionConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html)

