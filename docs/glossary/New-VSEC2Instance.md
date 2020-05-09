# New-VSEC2Instance

## SYNOPSIS
Adds an AWS::EC2::Instance resource to the template.
Specifies an EC2 instance.

## SYNTAX

```
New-VSEC2Instance [-LogicalId] <String> [-AdditionalInfo <Object>] [-Affinity <Object>]
 [-AvailabilityZone <Object>] [-BlockDeviceMappings <Object>] [-CpuOptions <Object>]
 [-CreditSpecification <Object>] [-DisableApiTermination <Object>] [-EbsOptimized <Object>]
 [-ElasticGpuSpecifications <Object>] [-ElasticInferenceAccelerators <Object>] [-HibernationOptions <Object>]
 [-HostId <Object>] [-HostResourceGroupArn <Object>] [-IamInstanceProfile <Object>] [-ImageId <Object>]
 [-InstanceInitiatedShutdownBehavior <Object>] [-InstanceType <Object>] [-Ipv6AddressCount <Object>]
 [-Ipv6Addresses <Object>] [-KernelId <Object>] [-KeyName <Object>] [-LaunchTemplate <Object>]
 [-LicenseSpecifications <Object>] [-Monitoring <Object>] [-NetworkInterfaces <Object>]
 [-PlacementGroupName <Object>] [-PrivateIpAddress <Object>] [-RamdiskId <Object>] [-SecurityGroupIds <Object>]
 [-SecurityGroups <Object>] [-SourceDestCheck <Object>] [-SsmAssociations <Object>] [-SubnetId <Object>]
 [-Tags <Object>] [-Tenancy <Object>] [-UserData <Object>] [-Volumes <Object>] [-CreationPolicy <Object>]
 [-DeletionPolicy <String>] [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance resource to the template.
Specifies an EC2 instance.

If an Elastic IP address is attached to your instance, AWS CloudFormation reattaches the Elastic IP address after it updates the instance.
For more information about updating stacks, see  AWS CloudFormation Stacks Updates: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html.

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdditionalInfo
This property is reserved for internal use.
If you use it, the stack fails with this error: Bad property set: Testing this property\] Service: AmazonEC2; Status Code: 400; Error Code: InvalidParameterCombination; Request ID: 0XXXXXX-49c7-4b40-8bcc-76885dcXXXXX.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Affinity
Indicates whether the instance is associated with a dedicated host.
If you want the instance to always restart on the same host on which it was launched, specify host.
If you want the instance to restart on any available host, but try to launch onto the last host it ran on on a best-effort basis, specify default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-affinity
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityZone
The Availability Zone of the instance.
If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region.
This parameter is not supported by DescribeImageAttribute: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImageAttribute.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-availabilityzone
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlockDeviceMappings
The block device mapping entries that defines the block devices to attach to the instance at launch.
By default, the block devices specified in the block device mapping for the AMI are used.
You can override the AMI block device mapping using the instance block device mapping.
For the root volume, you can only override the volume size, volume type, and DeleteOnTermination setting.
After the instance is running, you can only modify the DeleteOnTermination settings of the attached EBS volumes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-blockdevicemappings
DuplicatesAllowed: True
ItemType: BlockDeviceMapping
Type: List
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CpuOptions
The CPU options for the instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-cpuoptions
Type: CpuOptions
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreditSpecification
The credit option for CPU usage of the burstable performance instance.
Valid values are standard and unlimited.
To change this attribute after launch, use  ModifyInstanceCreditSpecification: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html.
For more information, see Burstable Performance Instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html in the *Amazon Elastic Compute Cloud User Guide*.
Default: standard T2 instances or unlimited T3/T3a instances

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-creditspecification
Type: CreditSpecification
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableApiTermination
If you set this parameter to true, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can.
To change this attribute after launch, use ModifyInstanceAttribute: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html.
Alternatively, if you set InstanceInitiatedShutdownBehavior to terminate, you can terminate the instance by running the shutdown command from the instance.
Default: false

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-disableapitermination
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EbsOptimized
Indicates whether the instance is optimized for Amazon EBS I/O.
This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance.
This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.
Default: false

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ebsoptimized
PrimitiveType: Boolean
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ElasticGpuSpecifications
An elastic GPU to associate with the instance.
An Elastic GPU is a GPU resource that you can attach to your Windows instance to accelerate the graphics performance of your applications.
For more information, see  Amazon EC2 Elastic GPUs: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html in the *Amazon Elastic Compute Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-elasticgpuspecifications
DuplicatesAllowed: False
ItemType: ElasticGpuSpecification
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ElasticInferenceAccelerators
An elastic inference accelerator to associate with the instance.
Elastic inference accelerators are a resource you can attach to your Amazon EC2 instances to accelerate your Deep Learning DL inference workloads.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-elasticinferenceaccelerators
DuplicatesAllowed: False
ItemType: ElasticInferenceAccelerator
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HibernationOptions
Indicates whether an instance is enabled for hibernation.
For more information, see Hibernate Your Instance: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html in the *Amazon Elastic Compute Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-hibernationoptions
Type: HibernationOptions
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostId
If you specify host for the Affinity property, the ID of a dedicated host that the instance is associated with.
If you don't specify an ID, Amazon EC2 launches the instance onto any available, compatible dedicated host in your account.
This type of launch is called an untargeted launch.
Note that for untargeted launches, you must have a compatible, dedicated host available to successfully launch instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-hostid
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostResourceGroupArn
The ARN of the host resource group in which to launch the instances.
If you specify a host resource group ARN, omit the **Tenancy** parameter or set it to host.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-hostresourcegrouparn
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IamInstanceProfile
The IAM instance profile.
See IamInstanceProfileSpecification: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfileSpecification.html in the *Amazon EC2 API Reference* for property values.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-iaminstanceprofile
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImageId
The ID of the AMI.
An AMI ID is required to launch an instance and must be specified here or in a launch template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-imageid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceInitiatedShutdownBehavior
Indicates whether an instance stops or terminates when you initiate shutdown from the instance using the operating system command for system shutdown.
Default: stop

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-instanceinitiatedshutdownbehavior
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceType
The instance type.
For more information, see Instance Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html in the *Amazon Elastic Compute Cloud User Guide*.
Default: m1.small

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-instancetype
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ipv6AddressCount
EC2-VPC\] The number of IPv6 addresses to associate with the primary network interface.
Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
You cannot specify this option and the option to assign specific IPv6 addresses in the same request.
You can specify this option if you've specified a minimum number of instances to launch.
You cannot specify this option and the network interfaces option in the same request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ipv6addresscount
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ipv6Addresses
EC2-VPC\] The IPv6 addresses from the range of the subnet to associate with the primary network interface.
You cannot specify this option and the option to assign a number of IPv6 addresses in the same request.
You cannot specify this option if you've specified a minimum number of instances to launch.
You cannot specify this option and the network interfaces option in the same request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ipv6addresses
DuplicatesAllowed: True
ItemType: InstanceIpv6Address
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KernelId
The ID of the kernel.
We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see  PV-GRUB: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html in the *Amazon Elastic Compute Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-kernelid
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyName
The name of the key pair.
You can create a key pair using CreateKeyPair: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html or ImportKeyPair: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html.
If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-keyname
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LaunchTemplate
The launch template to use to launch the instances.
Any parameters that you specify in the AWS CloudFormation template override the same parameters in the launch template.
You can specify either the name or ID of a launch template, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-launchtemplate
Type: LaunchTemplateSpecification
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LicenseSpecifications
The license configurations.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-licensespecifications
DuplicatesAllowed: False
ItemType: LicenseSpecification
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Monitoring
Specifies whether detailed monitoring is enabled for the instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-monitoring
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkInterfaces
The network interfaces to associate with the instance.
If you use this property to point to a network interface, you must terminate the original interface before attaching a new one to allow the update of the instance to succeed.
If this resource has a public IP address and is also in a VPC that is defined in the same template, you must use the  DependsOn Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html to declare a dependency on the VPC-gateway attachment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-networkinterfaces
DuplicatesAllowed: True
ItemType: NetworkInterface
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlacementGroupName
The name of an existing placement group that you want to launch the instance into for cluster instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-placementgroupname
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateIpAddress
EC2-VPC\] The primary IPv4 address.
You must specify a value from the IPv4 address range of the subnet.
Only one private IP address can be designated as primary.
You can't specify this option if you've specified the option to designate a private IP address as the primary IP address in a network interface specification.
You cannot specify this option if you're launching more than one instance in the request.
You cannot specify this option and the network interfaces option in the same request.
If you make an update to an instance that requires replacement, you must assign a new private IP address.
During a replacement, AWS CloudFormation creates a new instance but doesn't delete the old instance until the stack has successfully updated.
If the stack update fails, AWS CloudFormation uses the old instance in order to roll back the stack to the previous working state.
The old and new instances cannot have the same private IP address.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-privateipaddress
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RamdiskId
The ID of the RAM disk to select.
Some kernels require additional drivers at launch.
Check the kernel requirements for information about whether you need to specify a RAM disk.
To find kernel requirements, go to the AWS Resource Center and search for the kernel ID.
We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see  PV-GRUB: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html in the *Amazon Elastic Compute Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ramdiskid
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecurityGroupIds
The IDs of the security groups.
You can create a security group using CreateSecurityGroup: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html.
If you specify a network interface, you must specify any security groups as part of the network interface.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-securitygroupids
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecurityGroups
EC2-Classic, default VPC\] The names of the security groups.
For a nondefault VPC, you must use security group IDs instead.
You cannot specify this option and the network interfaces option in the same request.
The list can contain both the name of existing Amazon EC2 security groups or references to AWS::EC2::SecurityGroup resources created in the template.
Default: Amazon EC2 uses the default security group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-securitygroups
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceDestCheck
Specifies whether to enable an instance launched in a VPC to perform NAT.
This controls whether source/destination checking is enabled on the instance.
A value of true means that checking is enabled, and false means that checking is disabled.
The value must be false for the instance to perform NAT.
For more information, see NAT Instances: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html in the *Amazon Virtual Private Cloud User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-sourcedestcheck
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SsmAssociations
The SSM  document: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html and parameter values in AWS Systems Manager to associate with this instance.
To use this property, you must specify an IAM instance profile role for the instance.
For more information, see  Create an Instance Profile for Systems Manager: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-configuring-access-role.html in the *AWS Systems Manager User Guide*.
You can currently associate only one document with an instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ssmassociations
DuplicatesAllowed: True
ItemType: SsmAssociation
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubnetId
EC2-VPC\] The ID of the subnet to launch the instance into.
If you specify a network interface, you must specify any subnets as part of the network interface.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-subnetid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
The tags to apply to the instance during launch.
These tags are not applied to the EBS volumes, such as the root volume.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-tags
DuplicatesAllowed: True
ItemType: Tag
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tenancy
The tenancy of the instance if the instance is running in a VPC.
An instance with a tenancy of dedicated runs on single-tenant hardware.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-tenancy
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserData
The user data to make available to the instance.
For more information, see Running Commands on Your Linux Instance at Launch: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html Linux and Adding User Data: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data Windows.
If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file.
Otherwise, you must provide base64-encoded text.
User data is limited to 16 KB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-userdata
PrimitiveType: String
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Volumes
The volumes to attach to the instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-volumes
DuplicatesAllowed: True
ItemType: Volume
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreationPolicy
Use the CreationPolicy attribute when you want to wait on resource configuration actions before stack creation proceeds.
For example, if you install and configure software applications on an EC2 instance, you might want those applications to be running before proceeding.
In such cases, you can add a CreationPolicy attribute to the instance, and then send a success signal to the instance after the applications are installed and configured.

You must use the "Add-CreationPolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateReplacePolicy
Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters.
If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update.
Recreating the resource generates a new physical ID.
AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource.
By default, AWS CloudFormation then deletes the old resource.
Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

You can apply the UpdateReplacePolicy attribute to any resource.
UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID.
For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one.
The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance.
The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference.
For more information on resource update behavior, see Update Behaviors of Stack Resources.

The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

Note
Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources.
Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots.
UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates.
Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Instance
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html)

