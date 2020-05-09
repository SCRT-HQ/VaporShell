# Add-VSEMRClusterApplication

## SYNOPSIS
Adds an AWS::EMR::Cluster.Application resource property to the template.
Application is a property of AWS::EMR::Cluster.
The Application property type defines the open-source big data applications for EMR to install and configure when a cluster is created.

## SYNTAX

```
Add-VSEMRClusterApplication [[-AdditionalInfo] <Hashtable>] [[-Args] <Object>] [[-Name] <Object>]
 [[-Version] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.Application resource property to the template.
Application is a property of AWS::EMR::Cluster.
The Application property type defines the open-source big data applications for EMR to install and configure when a cluster is created.

With Amazon EMR release version 4.0 and later, the only accepted parameter is the application Name.
To pass arguments to these applications, you use configuration classifications specified using JSON objects in a Configuration property.
For more information, see Configuring Applications: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html.

With earlier Amazon EMR releases, the application is any Amazon or third-party software that you can add to the cluster.
You can specify the version of the application and arguments to pass to it.
Amazon EMR accepts and forwards the argument list to the corresponding installation script as a bootstrap action argument.

## PARAMETERS

### -AdditionalInfo
This option is for advanced users only.
This is meta information about clusters and applications that are used for testing and troubleshooting.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-additionalinfo
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Args
Arguments for Amazon EMR to pass to the application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-args
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Name
The name of the application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-name
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

### -Version
The version of the application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-version
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.Application
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html)

