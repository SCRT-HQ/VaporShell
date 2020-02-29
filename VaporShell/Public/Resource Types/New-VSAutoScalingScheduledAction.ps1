function New-VSAutoScalingScheduledAction {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::ScheduledAction resource to the template. Specifies a scheduled scaling action for an Amazon EC2 Auto Scaling group, changing the number of servers available for your application in response to predictable load changes.

    .DESCRIPTION
        Adds an AWS::AutoScaling::ScheduledAction resource to the template. Specifies a scheduled scaling action for an Amazon EC2 Auto Scaling group, changing the number of servers available for your application in response to predictable load changes.

**Important**

When you update a stack with an Auto Scaling group and scheduled action, AWS CloudFormation always sets the min size, max size, and desired capacity properties of your group to the values that are defined in the AWS::AutoScaling::AutoScalingGroup section of your template. However, you might not want CloudFormation to do that when you have a scheduled action in effect. You can use an UpdatePolicy attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html to prevent CloudFormation from changing the min size, max size, or desired capacity property values during a stack update unless you modified the individual values in your template.

If you have rolling updates enabled, before you can update the Auto Scaling group, you must suspend scheduled actions by specifying an UpdatePolicy attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html for the Auto Scaling group. You can find sample update policies for rolling updates in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#aws-properties-as-group--examples section of the AWS::AutoScaling::AutoScalingGroup documentation.

For more information, see Scheduled Scaling: https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html and Suspending and Resuming Scaling Processes: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html in the *Amazon EC2 Auto Scaling User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER AutoScalingGroupName
        The name or Amazon Resource Name ARN of the Auto Scaling group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-asgname
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DesiredCapacity
        The number of Amazon EC2 instances that should be running in the Auto Scaling group.
You must specify at least one of the following properties: MaxSize, MinSize, or DesiredCapacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-desiredcapacity
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER EndTime
        The date and time in UTC for the recurring schedule to end. For example, "2019-06-01T00:00:00Z".

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-endtime
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER MaxSize
        The maximum number of Amazon EC2 instances in the Auto Scaling group.
You must specify at least one of the following properties: MaxSize, MinSize, or DesiredCapacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-maxsize
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MinSize
        The minimum number of Amazon EC2 instances in the Auto Scaling group.
You must specify at least one of the following properties: MaxSize, MinSize, or DesiredCapacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-minsize
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Recurrence
        The recurring schedule for this action, in Unix cron syntax format. For more information about cron syntax, see Crontab: http://crontab.org/.
Specifying the StartTime and EndTime properties with Recurrence property forms the start and stop boundaries of the recurring action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-recurrence
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER StartTime
        The date and time in UTC for this action to start. For example, "2019-06-01T00:00:00Z".

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-starttime
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
    [OutputType('Vaporshell.Resource.AutoScaling.ScheduledAction')]
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
        $AutoScalingGroupName,
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
        $DesiredCapacity,
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
        $EndTime,
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
        $MaxSize,
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
        $MinSize,
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
        $Recurrence,
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
        $StartTime,
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
            Type = "AWS::AutoScaling::ScheduledAction"
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.ScheduledAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
