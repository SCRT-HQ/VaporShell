function Add-VSCognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType resource property to the template. Account takeover actions type.

    .DESCRIPTION
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType resource property to the template.
Account takeover actions type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html

    .PARAMETER HighAction
        Action to take for a high risk.

        Type: AccountTakeoverActionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-highaction
        UpdateType: Mutable

    .PARAMETER LowAction
        Action to take for a low risk.

        Type: AccountTakeoverActionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-lowaction
        UpdateType: Mutable

    .PARAMETER MediumAction
        Action to take for a medium risk.

        Type: AccountTakeoverActionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-mediumaction
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HighAction,
        [parameter(Mandatory = $false)]
        $LowAction,
        [parameter(Mandatory = $false)]
        $MediumAction
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
