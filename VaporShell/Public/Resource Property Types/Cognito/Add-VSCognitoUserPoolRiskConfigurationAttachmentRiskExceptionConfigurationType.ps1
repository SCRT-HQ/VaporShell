function Add-VSCognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType resource property to the template. The type of the configuration to override the risk decision.

    .DESCRIPTION
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType resource property to the template.
The type of the configuration to override the risk decision.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html

    .PARAMETER BlockedIPRangeList
        Overrides the risk decision to always block the pre-authentication requests. The IP range is in CIDR notation: a compact representation of an IP address and its associated routing prefix.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-blockediprangelist
        UpdateType: Mutable

    .PARAMETER SkippedIPRangeList
        Risk detection is not performed on the IP addresses in the range list. The IP range is in CIDR notation.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-skippediprangelist
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $BlockedIPRangeList,
        [parameter(Mandatory = $false)]
        $SkippedIPRangeList
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
