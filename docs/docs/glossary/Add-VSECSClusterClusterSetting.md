# Add-VSECSClusterClusterSetting

## SYNOPSIS
Adds an AWS::ECS::Cluster.ClusterSetting resource property to the template.
The settings to use when creating a cluster.
This parameter is used to enable CloudWatch Container Insights for a cluster.

## SYNTAX

```
Add-VSECSClusterClusterSetting [-Name] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Cluster.ClusterSetting resource property to the template.
The settings to use when creating a cluster.
This parameter is used to enable CloudWatch Container Insights for a cluster.

## PARAMETERS

### -Name
The name of the cluster setting.
The only supported value is containerInsights.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersetting.html#cfn-ecs-cluster-clustersetting-name
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

### -Value
The value to set for the cluster setting.
The supported values are enabled and disabled.
If enabled is specified, CloudWatch Container Insights will be enabled for the cluster, otherwise it will be disabled unless the containerInsights account setting is enabled.
If a cluster value is specified, it will override the containerInsights value set with PutAccountSetting: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html or PutAccountSettingDefault: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersetting.html#cfn-ecs-cluster-clustersetting-value
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

### Vaporshell.Resource.ECS.Cluster.ClusterSetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersetting.html)

