function Add-VSGreengrassSubscriptionDefinitionSubscriptionDefinitionVersion {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::SubscriptionDefinition.SubscriptionDefinitionVersion resource property to the template. <a name="aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion-description"></a> A subscription definition version contains a list of subscriptions: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html.

    .DESCRIPTION
        Adds an AWS::Greengrass::SubscriptionDefinition.SubscriptionDefinitionVersion resource property to the template.
<a name="aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion-description"></a> A subscription definition version contains a list of subscriptions: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html.

**Note**

After you create a subscription definition version that contains the subscriptions you want to deploy, you must add it to your group version. For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

<a name="aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion-inheritance"></a> In an AWS CloudFormation template, SubscriptionDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::SubscriptionDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html

    .PARAMETER Subscriptions
        The subscriptions in this version.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinition-subscriptiondefinitionversion-subscriptions
        ItemType: Subscription
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.SubscriptionDefinition.SubscriptionDefinitionVersion')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Greengrass.SubscriptionDefinition.Subscription"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Subscriptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.SubscriptionDefinition.SubscriptionDefinitionVersion'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
