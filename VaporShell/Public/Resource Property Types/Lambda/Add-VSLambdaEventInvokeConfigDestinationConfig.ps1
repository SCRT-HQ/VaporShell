function Add-VSLambdaEventInvokeConfigDestinationConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::EventInvokeConfig.DestinationConfig resource property to the template. A configuration object that specifies the destination of an event after Lambda processes it.

    .DESCRIPTION
        Adds an AWS::Lambda::EventInvokeConfig.DestinationConfig resource property to the template.
A configuration object that specifies the destination of an event after Lambda processes it.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html

    .PARAMETER OnSuccess
        The destination configuration for successful invocations.

        Type: OnSuccess
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onsuccess
        UpdateType: Mutable

    .PARAMETER OnFailure
        The destination configuration for failed invocations.

        Type: OnFailure
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onfailure
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.EventInvokeConfig.DestinationConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OnSuccess,
        [parameter(Mandatory = $false)]
        $OnFailure
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.EventInvokeConfig.DestinationConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
