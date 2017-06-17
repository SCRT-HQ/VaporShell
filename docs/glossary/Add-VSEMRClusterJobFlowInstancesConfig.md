---
layout: glossary
title: Add-VSEMRClusterJobFlowInstancesConfig
categories: glossary
---

# Add-VSEMRClusterJobFlowInstancesConfig

## SYNOPSIS
Adds an AWS::EMR::Cluster.JobFlowInstancesConfig resource property to the template

## SYNTAX

```
Add-VSEMRClusterJobFlowInstancesConfig [[-AdditionalMasterSecurityGroups] <Object>]
 [[-AdditionalSlaveSecurityGroups] <Object>] [[-CoreInstanceGroup] <Object>] [[-Ec2KeyName] <Object>]
 [[-Ec2SubnetId] <Object>] [[-EmrManagedMasterSecurityGroup] <Object>]
 [[-EmrManagedSlaveSecurityGroup] <Object>] [[-HadoopVersion] <Object>] [-MasterInstanceGroup] <Object>
 [[-Placement] <Object>] [[-ServiceAccessSecurityGroup] <Object>] [[-TerminationProtected] <Boolean>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.JobFlowInstancesConfig resource property to the template

## PARAMETERS

### -AdditionalMasterSecurityGroups
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-additionalmastersecuritygroups    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: False    
Type: List    
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

### -AdditionalSlaveSecurityGroups
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-additionalslavesecuritygroups    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: False    
Type: List    
UpdateType: Immutable

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

### -CoreInstanceGroup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-coreinstancegroup    
Required: False    
Type: InstanceGroupConfig    
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

### -Ec2KeyName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-ec2keyname    
PrimitiveType: String    
Required: False    
UpdateType: Immutable

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

### -Ec2SubnetId
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-ec2subnetid    
PrimitiveType: String    
Required: False    
UpdateType: Immutable

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

### -EmrManagedMasterSecurityGroup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-emrmanagedmastersecuritygroup    
PrimitiveType: String    
Required: False    
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmrManagedSlaveSecurityGroup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-emrmanagedslavesecuritygroup    
PrimitiveType: String    
Required: False    
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HadoopVersion
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-hadoopversion    
PrimitiveType: String    
Required: False    
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MasterInstanceGroup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-masterinstancegroup    
Required: True    
Type: InstanceGroupConfig    
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Placement
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-placement    
Required: False    
Type: PlacementType    
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServiceAccessSecurityGroup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-serviceaccesssecuritygroup    
PrimitiveType: String    
Required: False    
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TerminationProtected
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-terminationprotected    
PrimitiveType: Boolean    
Required: False    
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 12
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.JobFlowInstancesConfig

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html)

