function Add-VSSNSTopicSubscription {
    <#
    .SYNOPSIS
        Adds an AWS::SNS::Topic.Subscription resource property to the template. Subscription is an embedded property that describes the subscription endpoints of an Amazon SNS topic.

    .DESCRIPTION
        Adds an AWS::SNS::Topic.Subscription resource property to the template.
Subscription is an embedded property that describes the subscription endpoints of an Amazon SNS topic.

**Note**

For full control over subscription behavior such as delivery policy, filtering, raw message delivery, cross-region subscriptions, etc. use  AWS::SNS::Subscription: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html  resource instead of this embedded property .

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html

    .PARAMETER Endpoint
        The endpoint that receives notifications from the Amazon SNS topic. The endpoint value depends on the protocol that you specify. For more information, see the Endpoint parameter of the  Subscribe: https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html  action in the *Amazon Simple Notification Service API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-endpoint
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Protocol
        The subscription's protocol. For more information, see the Protocol parameter of the  Subscribe: https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html  action in the *Amazon Simple Notification Service API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-protocol
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SNS.Topic.Subscription')]
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
        $Endpoint,
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
        $Protocol
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SNS.Topic.Subscription'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
