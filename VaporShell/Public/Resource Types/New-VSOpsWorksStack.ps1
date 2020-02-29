function New-VSOpsWorksStack {
    <#
    .SYNOPSIS
        Adds an AWS::OpsWorks::Stack resource to the template. Creates a new stack. For more information, see Create a New Stack: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html.

    .DESCRIPTION
        Adds an AWS::OpsWorks::Stack resource to the template. Creates a new stack. For more information, see Create a New Stack: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html.

**Required Permissions**: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions: https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER AgentVersion
        The default AWS OpsWorks Stacks agent version. You have the following options:
+ Auto-update - Set this parameter to LATEST. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.
+ Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.
The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call DescribeAgentVersions: https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.
You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-agentversion
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Attributes
        One or more user-defined key-value pairs to be added to the stack attributes.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-attributes
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Mutable

    .PARAMETER ChefConfiguration
        A ChefConfiguration object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see Create a New Stack: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-chefconfiguration
        Type: ChefConfiguration
        UpdateType: Mutable

    .PARAMETER CloneAppIds
        If you're cloning an AWS OpsWorks stack, a list of AWS OpsWorks application stack IDs from the source stack to include in the cloned stack.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-cloneappids
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Immutable

    .PARAMETER ClonePermissions
        If you're cloning an AWS OpsWorks stack, indicates whether to clone the source stack's permissions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-clonepermissions
        PrimitiveType: Boolean
        UpdateType: Immutable

    .PARAMETER ConfigurationManager
        The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-configmanager
        Type: StackConfigurationManager
        UpdateType: Mutable

    .PARAMETER CustomCookbooksSource
        Contains the information required to retrieve an app or cookbook from a repository. For more information, see Adding Apps: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html or Cookbooks and Recipes: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-custcookbooksource
        Type: Source
        UpdateType: Mutable

    .PARAMETER CustomJson
        A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:
"{"key1": "value1", "key2": "value2",...}"
For more information about custom JSON, see Use Custom JSON to Modify the Stack Configuration Attributes: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-custjson
        PrimitiveType: Json
        UpdateType: Mutable

    .PARAMETER DefaultAvailabilityZone
        The stack's default Availability Zone, which must be in the specified region. For more information, see Regions and Endpoints: https://docs.aws.amazon.com/general/latest/gr/rande.html. If you also specify a value for DefaultSubnetId, the subnet must be in the same zone. For more information, see the VpcId parameter description.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultaz
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DefaultInstanceProfileArn
        The Amazon Resource Name ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see Using Identifiers: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultinstanceprof
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DefaultOs
        The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.
+ A supported Linux operating system: An Amazon Linux version, such as Amazon Linux 2018.03, Amazon Linux 2017.09, Amazon Linux 2017.03, Amazon Linux 2016.09, Amazon Linux 2016.03, Amazon Linux 2015.09, or Amazon Linux 2015.03.
+ A supported Ubuntu operating system, such as Ubuntu 16.04 LTS, Ubuntu 14.04 LTS, or Ubuntu 12.04 LTS.
+  CentOS Linux 7
+  Red Hat Enterprise Linux 7
+ A supported Windows operating system, such as Microsoft Windows Server 2012 R2 Base, Microsoft Windows Server 2012 R2 with SQL Server Express, Microsoft Windows Server 2012 R2 with SQL Server Standard, or Microsoft Windows Server 2012 R2 with SQL Server Web.
+ A custom AMI: Custom. You specify the custom AMI you want to use when you create instances. For more information, see  Using Custom AMIs: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html.
The default option is the current Amazon Linux version. For more information about supported operating systems, see AWS OpsWorks Stacks Operating Systems: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultos
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DefaultRootDeviceType
        The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is instance-store. For more information, see Storage for the Root Device: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultrootdevicetype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DefaultSshKeyName
        A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see  Using SSH to Communicate with an Instance: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html and  Managing SSH Access: https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html. You can override this setting by specifying a different key pair, or no key pair, when you  create an instance: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultsshkeyname
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DefaultSubnetId
        The stack's default subnet ID. All instances are launched into this subnet unless you specify another subnet ID when you create the instance. This parameter is required if you specify a value for the VpcId parameter. If you also specify a value for DefaultAvailabilityZone, the subnet must be in that zone.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#defaultsubnet
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER EcsClusterArn
        The Amazon Resource Name ARN of the Amazon Elastic Container Service Amazon ECS cluster to register with the AWS OpsWorks stack.
If you specify a cluster that's registered with another AWS OpsWorks stack, AWS CloudFormation deregisters the existing association before registering the cluster.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-ecsclusterarn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ElasticIps
        A list of Elastic IP addresses to register with the AWS OpsWorks stack.
If you specify an IP address that's registered with another AWS OpsWorks stack, AWS CloudFormation deregisters the existing association before registering the IP address.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-elasticips
        DuplicatesAllowed: False
        ItemType: ElasticIp
        Type: List
        UpdateType: Mutable

    .PARAMETER HostnameTheme
        The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, HostnameTheme is set to Layer_Dependent, which creates host names by appending integers to the layer's short name. The other themes are:
+  Baked_Goods
+  Clouds
+  Europe_Cities
+  Fruits
+  Greek_Deities_and_Titans
+  Legendary_creatures_from_Japan
+  Planets_and_Moons
+  Roman_Deities
+  Scottish_Islands
+  US_Cities
+  Wild_Cats
To obtain a generated host name, call GetHostNameSuggestion, which returns a host name based on the current theme.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-hostnametheme
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Name
        The stack name.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-name
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER RdsDbInstances
        The Amazon Relational Database Service Amazon RDS DB instance to register with the AWS OpsWorks stack.
If you specify a DB instance that's registered with another AWS OpsWorks stack, AWS CloudFormation deregisters the existing association before registering the DB instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-rdsdbinstances
        DuplicatesAllowed: False
        ItemType: RdsDbInstance
        Type: List
        UpdateType: Mutable

    .PARAMETER ServiceRoleArn
        The stack's AWS Identity and Access Management IAM role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name ARN for an existing IAM role. For more information about IAM ARNs, see Using Identifiers: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-servicerolearn
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER SourceStackId
        If you're cloning an AWS OpsWorks stack, the stack ID of the source AWS OpsWorks stack to clone.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-sourcestackid
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Tags
        A map that contains tag keys and tag values that are attached to a stack or layer.
+ The key cannot be empty.
+ The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: + - = . _ : /
+ The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: + - = . _ : /
+ Leading and trailing white spaces are trimmed from both the key and value.
+ A maximum of 40 tags is allowed for any resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-tags
        DuplicatesAllowed: True
        ItemType: Tag
        Type: List
        UpdateType: Mutable

    .PARAMETER UseCustomCookbooks
        Whether the stack uses custom cookbooks.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#usecustcookbooks
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER UseOpsworksSecurityGroups
        Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.
AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With UseOpsworksSecurityGroups you can instead provide your own custom security groups. UseOpsworksSecurityGroups has the following settings:
+ True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer default setting. You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.
+ False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.
For more information, see Create a New Stack: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-useopsworkssecuritygroups
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER VpcId
        The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.
+ If your account supports EC2-Classic, the default value is no VPC.
+ If your account does not support EC2-Classic, the default value is the default VPC for the specified region.
If the VPC ID corresponds to a default VPC and you have specified either the DefaultAvailabilityZone or the DefaultSubnetId parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.
If you specify a nondefault VPC ID, note the following:
+ It must belong to a VPC in your account that is in the specified region.
+ You must specify a value for DefaultSubnetId.
For more information about how to use AWS OpsWorks Stacks with a VPC, see Running a Stack in a VPC: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html. For more information about default VPC and EC2-Classic, see Supported Platforms: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-vpcid
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"


    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.


    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.


    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpsWorks.Stack')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AgentVersion,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Attributes,
        [parameter(Mandatory = $false)]
        $ChefConfiguration,
        [parameter(Mandatory = $false)]
        $CloneAppIds,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ClonePermissions,
        [parameter(Mandatory = $false)]
        $ConfigurationManager,
        [parameter(Mandatory = $false)]
        $CustomCookbooksSource,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CustomJson,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultAvailabilityZone,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultInstanceProfileArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultOs,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultRootDeviceType,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultSshKeyName,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultSubnetId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EcsClusterArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.OpsWorks.Stack.ElasticIp"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ElasticIps,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $HostnameTheme,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.OpsWorks.Stack.RdsDbInstance"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RdsDbInstances,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ServiceRoleArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SourceStackId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Tag","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tags,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UseCustomCookbooks,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UseOpsworksSecurityGroups,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VpcId,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $DeletionPolicy,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $DependsOn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "The UpdatePolicy parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Metadata,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UpdatePolicy,
        [parameter(Mandatory = $false)]
        $Condition
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::OpsWorks::Stack"
        }
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                LogicalId {}
                DeletionPolicy {
                    $ResourceParams.Add("DeletionPolicy",$DeletionPolicy)
                }
                DependsOn {
                    $ResourceParams.Add("DependsOn",$DependsOn)
                }
                Metadata {
                    $ResourceParams.Add("Metadata",$Metadata)
                }
                UpdatePolicy {
                    $ResourceParams.Add("UpdatePolicy",$UpdatePolicy)
                }
                Condition {
                    $ResourceParams.Add("Condition",$Condition)
                }
                CloneAppIds {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name CloneAppIds -Value @($CloneAppIds)
                }
                ElasticIps {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name ElasticIps -Value @($ElasticIps)
                }
                RdsDbInstances {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name RdsDbInstances -Value @($RdsDbInstances)
                }
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
                }
                CustomJson {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters[$key]
                }
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.Stack'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
