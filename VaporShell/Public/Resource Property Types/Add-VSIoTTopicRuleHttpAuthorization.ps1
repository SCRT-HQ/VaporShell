function Add-VSIoTTopicRuleHttpAuthorization {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::TopicRule.HttpAuthorization resource property to the template. The authorization method used to send messages.

    .DESCRIPTION
        Adds an AWS::IoT::TopicRule.HttpAuthorization resource property to the template.
The authorization method used to send messages.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpauthorization.html

    .PARAMETER Sigv4
        Use Sig V4 authorization. For more information, see Signature Version 4 Signing Process: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpauthorization.html#cfn-iot-topicrule-httpauthorization-sigv4
        Type: SigV4Authorization
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.TopicRule.HttpAuthorization')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Sigv4
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.TopicRule.HttpAuthorization'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
