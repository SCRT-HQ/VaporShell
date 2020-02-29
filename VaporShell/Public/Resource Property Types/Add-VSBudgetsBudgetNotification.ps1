function Add-VSBudgetsBudgetNotification {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::Budget.Notification resource property to the template. A notification that is associated with a budget. A budget can have up to five notifications.

    .DESCRIPTION
        Adds an AWS::Budgets::Budget.Notification resource property to the template.
A notification that is associated with a budget. A budget can have up to five notifications.

Each notification must have at least one subscriber. A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.

For example, if you have a budget for 200 dollars and you want to be notified when you go over 160 dollars, create a notification with the following parameters:

+ A notificationType of ACTUAL

+ A thresholdType of PERCENTAGE

+ A comparisonOperator of GREATER_THAN

+ A notification threshold of 80

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html

    .PARAMETER ComparisonOperator
        The comparison that is used for this notification.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-comparisonoperator
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER NotificationType
        Whether the notification is for how much you have spent ACTUAL or for how much you're forecasted to spend FORECASTED.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-notificationtype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Threshold
        The threshold that is associated with a notification. Thresholds are always a percentage.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-threshold
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER ThresholdType
        The type of threshold for a notification. For ABSOLUTE_VALUE thresholds, AWS notifies you when you go over or are forecasted to go over your total cost threshold. For PERCENTAGE thresholds, AWS notifies you when you go over or are forecasted to go over a certain percentage of your forecasted spend. For example, if you have a budget for 200 dollars and you have a PERCENTAGE threshold of 80%, AWS notifies you when you go over 160 dollars.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-thresholdtype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Budgets.Budget.Notification')]
    [cmdletbinding()]
    Param
    (
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
        $ComparisonOperator,
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
        $NotificationType,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Threshold,
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
        $ThresholdType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.Budget.Notification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
