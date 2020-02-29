function Add-VSPinpointEmailConfigurationSetEventDestinationDimensionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.DimensionConfiguration resource property to the template. An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch.

    .DESCRIPTION
        Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.DimensionConfiguration resource property to the template.
An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html

    .PARAMETER DimensionValueSource
        The location where Amazon Pinpoint finds the value of a dimension to publish to Amazon CloudWatch. Acceptable values: MESSAGE_TAG, EMAIL_HEADER, and LINK_TAG.
If you want Amazon Pinpoint to use the message tags that you specify using an X-SES-MESSAGE-TAGS header or a parameter to the SendEmail API, choose MESSAGE_TAG. If you want Amazon Pinpoint to use your own email headers, choose EMAIL_HEADER. If you want Amazon Pinpoint to use tags that are specified in your links, choose LINK_TAG.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DefaultDimensionValue
        The default value of the dimension that is published to Amazon CloudWatch if you don't provide the value of the dimension when you send an email. This value has to meet the following criteria:
+ It can only contain ASCII letters a–z, A–Z, numbers 0–9, underscores _, or dashes -.
+ It can contain no more than 256 characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DimensionName
        The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to meet the following criteria:
+ It can only contain ASCII letters a–z, A–Z, numbers 0–9, underscores _, or dashes -.
+ It can contain no more than 256 characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionname
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.PinpointEmail.ConfigurationSetEventDestination.DimensionConfiguration')]
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
        $DimensionValueSource,
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
        $DefaultDimensionValue,
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
        $DimensionName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PinpointEmail.ConfigurationSetEventDestination.DimensionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
