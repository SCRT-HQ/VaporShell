---
layout: pagenodesc
title: Add-VSECSTaskDefinitionContainerDefinition
category: glossary
---

# Add-VSECSTaskDefinitionContainerDefinition

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.ContainerDefinition resource property to the template

## SYNTAX

```
Add-VSECSTaskDefinitionContainerDefinition [[-Command] <Object>] [[-Cpu] <Int32>]
 [[-DisableNetworking] <Boolean>] [[-DnsSearchDomains] <Object>] [[-DnsServers] <Object>]
 [[-DockerLabels] <Hashtable>] [[-DockerSecurityOptions] <Object>] [[-EntryPoint] <Object>]
 [[-Environment] <Object>] [[-Essential] <Boolean>] [[-ExtraHosts] <Object>] [[-Hostname] <Object>]
 [[-Image] <Object>] [[-Links] <Object>] [[-LogConfiguration] <Object>] [[-Memory] <Int32>]
 [[-MemoryReservation] <Int32>] [[-MountPoints] <Object>] [[-Name] <Object>] [[-PortMappings] <Object>]
 [[-Privileged] <Boolean>] [[-ReadonlyRootFilesystem] <Boolean>] [[-Ulimits] <Object>] [[-User] <Object>]
 [[-VolumesFrom] <Object>] [[-WorkingDirectory] <Object>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.ContainerDefinition resource property to the template

## PARAMETERS

### -Command
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-command
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

### -Cpu
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-cpu
PrimitiveType: Integer
Required: False
UpdateType: Immutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableNetworking
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-disablenetworking
PrimitiveType: Boolean
Required: False
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DnsSearchDomains
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dnssearchdomains
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
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DnsServers
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dnsservers
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
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DockerLabels
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dockerlabels
DuplicatesAllowed: False
PrimitiveItemType: String
Required: False
Type: Map
UpdateType: Immutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DockerSecurityOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dockersecurityoptions
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
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntryPoint
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-entrypoint
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
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Environment
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-environment
DuplicatesAllowed: False
ItemType: KeyValuePair
Required: False
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Essential
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-essential
PrimitiveType: Boolean
Required: False
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraHosts
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-extrahosts
DuplicatesAllowed: False
ItemType: HostEntry
Required: False
Type: List
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

### -Hostname
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-hostname
PrimitiveType: String
Required: False
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Image
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-image
PrimitiveType: String
Required: False
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Links
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-links
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
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration
Required: False
Type: LogConfiguration
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Memory
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-memory
PrimitiveType: Integer
Required: False
UpdateType: Immutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 16
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemoryReservation
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-memoryreservation
PrimitiveType: Integer
Required: False
UpdateType: Immutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 17
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MountPoints
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints
DuplicatesAllowed: False
ItemType: MountPoint
Required: False
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-name
PrimitiveType: String
Required: False
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PortMappings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-portmappings
DuplicatesAllowed: False
ItemType: PortMapping
Required: False
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Privileged
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-privileged
PrimitiveType: Boolean
Required: False
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 21
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReadonlyRootFilesystem
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-readonlyrootfilesystem
PrimitiveType: Boolean
Required: False
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 22
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ulimits
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-ulimits
DuplicatesAllowed: False
ItemType: Ulimit
Required: False
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 23
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -User
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-user
PrimitiveType: String
Required: False
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 24
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumesFrom
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom
DuplicatesAllowed: False
ItemType: VolumeFrom
Required: False
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 25
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkingDirectory
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-workingdirectory
PrimitiveType: String
Required: False
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 26
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.ContainerDefinition

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html)

