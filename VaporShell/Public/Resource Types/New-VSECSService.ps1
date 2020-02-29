function New-VSECSService {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::Service resource to the template. The AWS::ECS::Service resource creates an Amazon Elastic Container Service (Amazon ECS service that runs and maintains the requested number of tasks and associated load balancers.

    .DESCRIPTION
        Adds an AWS::ECS::Service resource to the template. The AWS::ECS::Service resource creates an Amazon Elastic Container Service (Amazon ECS service that runs and maintains the requested number of tasks and associated load balancers.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER Cluster
        The short name or full Amazon Resource Name ARN of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-cluster
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DeploymentConfiguration
        Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentconfiguration
        Type: DeploymentConfiguration
        UpdateType: Mutable

    .PARAMETER DeploymentController
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentcontroller
        Type: DeploymentController
        UpdateType: Immutable

    .PARAMETER DesiredCount
        The number of instantiations of the specified task definition to place and keep running on your cluster.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-desiredcount
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER EnableECSManagedTags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-enableecsmanagedtags
        PrimitiveType: Boolean
        UpdateType: Immutable

    .PARAMETER HealthCheckGracePeriodSeconds
        The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only valid if your service is configured to use a load balancer. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds. During that time, the ECS service scheduler ignores health check status. This grace period can prevent the ECS service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-healthcheckgraceperiodseconds
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER LaunchType
        The launch type on which to run your service. For more information, see Amazon ECS Launch Types: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html in the *Amazon Elastic Container Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-launchtype
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER LoadBalancers
        A list of load balancer objects to associate with the cluster. If you specify the Role property, LoadBalancers must be specified as well. For information about the number of load balancers that you can specify per service, see Service Load Balancing: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html in the *Amazon Elastic Container Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-loadbalancers
        DuplicatesAllowed: False
        ItemType: LoadBalancer
        Type: List
        UpdateType: Immutable

    .PARAMETER NetworkConfiguration
        The network configuration for the service. This parameter is required for task definitions that use the awsvpc network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see Task Networking: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html in the *Amazon Elastic Container Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-networkconfiguration
        Type: NetworkConfiguration
        UpdateType: Mutable

    .PARAMETER PlacementConstraints
        An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task this limit includes constraints in the task definition and those specified at runtime.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementconstraints
        DuplicatesAllowed: False
        ItemType: PlacementConstraint
        Type: List
        UpdateType: Immutable

    .PARAMETER PlacementStrategies
        The placement strategy objects to use for tasks in your service. You can specify a maximum of five strategy rules per service. For more information, see Task Placement Strategies: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html in the *Amazon Elastic Container Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementstrategies
        DuplicatesAllowed: False
        ItemType: PlacementStrategy
        Type: List
        UpdateType: Immutable

    .PARAMETER PlatformVersion
        The platform version that your tasks in the service are running on. A platform version is specified only for tasks using the Fargate launch type. If one isn't specified, the LATEST platform version is used by default. For more information, see AWS Fargate Platform Versions: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html in the *Amazon Elastic Container Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-platformversion
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER PropagateTags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-propagatetags
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Role
        The name or full Amazon Resource Name ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is only permitted if you are using a load balancer with your service and your task definition does not use the awsvpc network mode. If you specify the role parameter, you must also specify a load balancer object with the loadBalancers parameter.
If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here. The service-linked role is required if your task definition uses the awsvpc network mode, in which case you should not specify a role here. For more information, see Using Service-Linked Roles for Amazon ECS: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html in the *Amazon Elastic Container Service Developer Guide*.
If your specified role has a path other than /, then you must either specify the full role ARN this is recommended or prefix the role name with the path. For example, if a role with the name bar has a path of /foo/ then you would specify /foo/bar as the role name. For more information, see Friendly Names and Paths: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names in the *IAM User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-role
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER SchedulingStrategy
        The scheduling strategy to use for the service. For more information, see Services: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html.
There are two service scheduler strategies available:
+  REPLICA-The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. This scheduler strategy is required if the service is using the CODE_DEPLOY or EXTERNAL deployment controller types.
+  DAEMON-The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. When you're using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.
**Note**
Tasks using the Fargate launch type or the CODE_DEPLOY or EXTERNAL deployment controller types don't support the DAEMON scheduling strategy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-schedulingstrategy
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER ServiceName
        The name of your service. Up to 255 letters uppercase and lowercase, numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicename
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER ServiceRegistries
        The details of the service discovery registries to assign to this service. For more information, see Service Discovery: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html.
Service discovery is supported for Fargate tasks if you are using platform version v1.1.0 or later. For more information, see AWS Fargate Platform Versions: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-serviceregistries
        DuplicatesAllowed: False
        ItemType: ServiceRegistry
        Type: List
        UpdateType: Immutable

    .PARAMETER Tags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-tags
        DuplicatesAllowed: True
        ItemType: Tag
        Type: List
        UpdateType: Mutable

    .PARAMETER TaskDefinition
        The family and revision family:revision or full ARN of the task definition to run in your service. If a revision is not specified, the latest ACTIVE revision is used.
A task definition must be specified if the service is using the ECS deployment controller.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition
        PrimitiveType: String
        UpdateType: Mutable

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
    [OutputType('Vaporshell.Resource.ECS.Service')]
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
        $Cluster,
        [parameter(Mandatory = $false)]
        $DeploymentConfiguration,
        [parameter(Mandatory = $false)]
        $DeploymentController,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DesiredCount,
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
        $EnableECSManagedTags,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $HealthCheckGracePeriodSeconds,
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
        $LaunchType,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.Service.LoadBalancer"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LoadBalancers,
        [parameter(Mandatory = $false)]
        $NetworkConfiguration,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.Service.PlacementConstraint"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PlacementConstraints,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.Service.PlacementStrategy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PlacementStrategies,
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
        $PlatformVersion,
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
        $PropagateTags,
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
        $Role,
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
        $SchedulingStrategy,
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
        $ServiceName,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.Service.ServiceRegistry"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ServiceRegistries,
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
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TaskDefinition,
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
            Type = "AWS::ECS::Service"
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
                LoadBalancers {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name LoadBalancers -Value @($LoadBalancers)
                }
                PlacementConstraints {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name PlacementConstraints -Value @($PlacementConstraints)
                }
                PlacementStrategies {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name PlacementStrategies -Value @($PlacementStrategies)
                }
                ServiceRegistries {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name ServiceRegistries -Value @($ServiceRegistries)
                }
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.Service'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
