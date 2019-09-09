# Add-VSEMRInstanceGroupConfigConfiguration

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.Configuration resource property to the template.
Configurations is a property of the AWS::EMR::Cluster resource that specifies the configuration of applications on an Amazon EMR cluster.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigConfiguration [[-Classification] <Object>] [[-ConfigurationProperties] <Hashtable>]
 [[-Configurations] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.Configuration resource property to the template.
Configurations is a property of the AWS::EMR::Cluster resource that specifies the configuration of applications on an Amazon EMR cluster.

Configurations are optional.
You can use them to have EMR customize applications and software bundled with Amazon EMR when a cluster is created.
A configuration consists of a classification, properties, and optional nested configurations.
A classification refers to an application-specific configuration file.
Properties are the settings you want to change in that file.
For more information, see Configuring Applications: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html.

**Note**

Applies only to Amazon EMR releases 4.0 and later.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Classification
The classification within a configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html#cfn-emr-cluster-configuration-classification
PrimitiveType: String
UpdateType: Immutable

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
Within a configuration classification, a set of properties that represent the settings that you want to change in the configuration file.
Duplicates not allowed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html#cfn-emr-cluster-configuration-configurationproperties
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Immutable

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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html#cfn-emr-cluster-configuration-configurations
DuplicatesAllowed: False
ItemType: Configuration
Type: List
UpdateType: Immutable

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

### Vaporshell.Resource.EMR.InstanceGroupConfig.Configuration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html)

