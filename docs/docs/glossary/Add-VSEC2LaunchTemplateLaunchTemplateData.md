# Add-VSEC2LaunchTemplateLaunchTemplateData

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.LaunchTemplateData resource property to the template.
The information to include in the launch template.

## SYNTAX

```
Add-VSEC2LaunchTemplateLaunchTemplateData [[-SecurityGroups] <Object>] [[-TagSpecifications] <Object>]
 [[-UserData] <Object>] [[-BlockDeviceMappings] <Object>] [[-IamInstanceProfile] <Object>]
 [[-KernelId] <Object>] [[-EbsOptimized] <Object>] [[-ElasticGpuSpecifications] <Object>]
 [[-ElasticInferenceAccelerators] <Object>] [[-Placement] <Object>] [[-NetworkInterfaces] <Object>]
 [[-ImageId] <Object>] [[-InstanceType] <Object>] [[-Monitoring] <Object>] [[-HibernationOptions] <Object>]
 [[-MetadataOptions] <Object>] [[-LicenseSpecifications] <Object>]
 [[-InstanceInitiatedShutdownBehavior] <Object>] [[-CpuOptions] <Object>] [[-SecurityGroupIds] <Object>]
 [[-KeyName] <Object>] [[-DisableApiTermination] <Object>] [[-InstanceMarketOptions] <Object>]
 [[-RamDiskId] <Object>] [[-CapacityReservationSpecification] <Object>] [[-CreditSpecification] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.LaunchTemplateData resource property to the template.
The information to include in the launch template.

## PARAMETERS

### -SecurityGroups
EC2-Classic, default VPC\] One or more security group names.
For a nondefault VPC, you must use security group IDs instead.
You cannot specify both a security group ID and security name in the same request.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-securitygroups
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

### -TagSpecifications
The tags to apply to the resources during launch.
You can only tag instances and volumes on launch.
The specified tags are applied to all instances or volumes that are created during launch.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-tagspecifications
ItemType: TagSpecification
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

### -UserData
The Base64-encoded user data to make available to the instance.
For more information, see Running Commands on Your Linux Instance at Launch: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html Linux and Adding User Data: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data Windows.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-userdata
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

### -BlockDeviceMappings
The block device mapping.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-blockdevicemappings
ItemType: BlockDeviceMapping
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

### -IamInstanceProfile
The IAM instance profile.

Type: IamInstanceProfile
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile
UpdateType: Mutable

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

### -KernelId
The ID of the kernel.
We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see User Provided Kernels: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html in the *Amazon Elastic Compute Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-kernelid
PrimitiveType: String
UpdateType: Mutable

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

### -EbsOptimized
Indicates whether the instance is optimized for Amazon EBS I/O.
This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance.
This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-ebsoptimized
PrimitiveType: Boolean
UpdateType: Mutable

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

### -ElasticGpuSpecifications
An elastic GPU to associate with the instance.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-elasticgpuspecifications
ItemType: ElasticGpuSpecification
UpdateType: Mutable

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

### -ElasticInferenceAccelerators
The elastic inference accelerator for the instance.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-elasticinferenceaccelerators
ItemType: LaunchTemplateElasticInferenceAccelerator
UpdateType: Mutable

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

### -Placement
The placement for the instance.

Type: Placement
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-placement
UpdateType: Mutable

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

### -NetworkInterfaces
One or more network interfaces.
If you specify a network interface, you must specify any security groups and subnets as part of the network interface.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-networkinterfaces
ItemType: NetworkInterface
UpdateType: Mutable

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

### -ImageId
The ID of the AMI.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-imageid
PrimitiveType: String
UpdateType: Mutable

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

### -InstanceType
The instance type.
For more information, see Instance Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html in the *Amazon Elastic Compute Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instancetype
PrimitiveType: String
UpdateType: Mutable

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

### -Monitoring
The monitoring for the instance.

Type: Monitoring
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-monitoring
UpdateType: Mutable

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

### -HibernationOptions
Indicates whether an instance is enabled for hibernation.
This parameter is valid only if the instance meets the hibernation prerequisites: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites.
For more information, see Hibernate Your Instance: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html in the *Amazon Elastic Compute Cloud User Guide*.

Type: HibernationOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-hibernationoptions
UpdateType: Mutable

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

### -MetadataOptions
The metadata options for the instance.
For more information, see Instance Metadata and User Data: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html in the *Amazon Elastic Compute Cloud User Guide*.

Type: MetadataOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-metadataoptions
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LicenseSpecifications
The license configurations.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-licensespecifications
ItemType: LicenseSpecification
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceInitiatedShutdownBehavior
Indicates whether an instance stops or terminates when you initiate shutdown from the instance using the operating system command for system shutdown.
Default: stop

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instanceinitiatedshutdownbehavior
PrimitiveType: String
UpdateType: Mutable

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

### -CpuOptions
The CPU options for the instance.
For more information, see Optimizing CPU Options: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html in the *Amazon Elastic Compute Cloud User Guide*.

Type: CpuOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions
UpdateType: Mutable

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

### -SecurityGroupIds
One or more security group IDs.
You can create a security group using CreateSecurityGroup: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html.
You cannot specify both a security group ID and security name in the same request.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-securitygroupids
UpdateType: Mutable

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

### -KeyName
The name of the key pair.
You can create a key pair using CreateKeyPair: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html or ImportKeyPair: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html.
If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-keyname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableApiTermination
If you set this parameter to true, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can.
To change this attribute after launch, use ModifyInstanceAttribute: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html.
Alternatively, if you set InstanceInitiatedShutdownBehavior to terminate, you can terminate the instance by running the shutdown command from the instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-disableapitermination
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceMarketOptions
The market purchasing option for the instances.

Type: InstanceMarketOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions
UpdateType: Mutable

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

### -RamDiskId
The ID of the RAM disk.
We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see User Provided Kernels: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html in the *Amazon Elastic Compute Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-ramdiskid
PrimitiveType: String
UpdateType: Mutable

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

### -CapacityReservationSpecification
The Capacity Reservation targeting option.
If you do not specify this parameter, the instance's Capacity Reservation preference defaults to open, which enables it to run in any open Capacity Reservation that has matching attributes instance type, platform, Availability Zone.

Type: CapacityReservationSpecification
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification
UpdateType: Mutable

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

### -CreditSpecification
The credit option for CPU usage of the instance.
Valid for T2 or T3 instances only.

Type: CreditSpecification
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-creditspecification
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.LaunchTemplate.LaunchTemplateData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html)

