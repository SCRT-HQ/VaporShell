# Add-VSEMRClusterConfiguration

## SYNOPSIS
Adds an AWS::EMR::Cluster.Configuration resource property to the template.
**Note**

## SYNTAX

```
Add-VSEMRClusterConfiguration [[-Classification] <Object>] [[-ConfigurationProperties] <Hashtable>]
 [[-Configurations] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.Configuration resource property to the template.
**Note**

Used only with Amazon EMR release 4.0 and later.

Configuration is a subproperty of InstanceFleetConfig or InstanceGroupConfig.
Configuration specifies optional configurations for customizing open-source big data applications and environment parameters.
A configuration consists of a classification, properties, and optional nested configurations.
A classification refers to an application-specific configuration file.
Properties are the settings you want to change in that file.
For more information, see Configuring Applications: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html in the *Amazon EMR Release Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Classification
The classification within a configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-configuration.html#cfn-elasticmapreduce-cluster-configuration-classification
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

### -ConfigurationProperties
A list of additional configurations to apply within a configuration object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-configuration.html#cfn-elasticmapreduce-cluster-configuration-configurationproperties
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Configurations
A list of additional configurations to apply within a configuration object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-configuration.html#cfn-elasticmapreduce-cluster-configuration-configurations
DuplicatesAllowed: False
ItemType: Configuration
Type: List
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

### Vaporshell.Resource.EMR.Cluster.Configuration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-configuration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-configuration.html)

