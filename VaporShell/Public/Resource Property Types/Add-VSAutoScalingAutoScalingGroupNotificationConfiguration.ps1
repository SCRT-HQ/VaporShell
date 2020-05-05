function Add-VSAutoScalingAutoScalingGroupNotificationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfiguration resource property to the template. NotificationConfiguration specifies a list of notification configurations for the NotificationConfigurations property of AWS::AutoScaling::AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html. NotificationConfiguration specifies the events that the Amazon EC2 Auto Scaling group sends notifications for.

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfiguration resource property to the template.
NotificationConfiguration specifies a list of notification configurations for the NotificationConfigurations property of AWS::AutoScaling::AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html. NotificationConfiguration specifies the events that the Amazon EC2 Auto Scaling group sends notifications for.

For example snippets, see Auto Scaling Group with Notifications: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html#scenario-as-notification.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html

    .PARAMETER NotificationTypes
        A list of event types that trigger a notification. Event types can include any of the following types.
*Allowed Values*:
+  autoscaling:EC2_INSTANCE_LAUNCH
+  autoscaling:EC2_INSTANCE_LAUNCH_ERROR
+  autoscaling:EC2_INSTANCE_TERMINATE
+  autoscaling:EC2_INSTANCE_TERMINATE_ERROR
+  autoscaling:TEST_NOTIFICATION

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-as-group-notificationconfigurations-notificationtypes
        DuplicatesAllowed: True
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER TopicARN
        The Amazon Resource Name ARN of the Amazon Simple Notification Service Amazon SNS topic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations-topicarn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.NotificationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NotificationTypes,
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
        $TopicARN
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.NotificationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
