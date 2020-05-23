function Add-VSCognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfigurationType {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType resource property to the template. Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.

    .DESCRIPTION
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType resource property to the template.
Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html

    .PARAMETER Actions
        Account takeover risk configuration actions

        Type: AccountTakeoverActionsType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-actions
        UpdateType: Mutable

    .PARAMETER NotifyConfiguration
        The notify configuration used to construct email notifications.

        Type: NotifyConfigurationType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-notifyconfiguration
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Actions,
        [parameter(Mandatory = $false)]
        $NotifyConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
