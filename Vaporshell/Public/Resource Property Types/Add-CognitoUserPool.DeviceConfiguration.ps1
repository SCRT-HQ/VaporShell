function Add-CognitoUserPool.DeviceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Method resource to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html

    .PARAMETER DeviceOnlyRememberedOnUserPrompt
		Required: False
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html#cfn-cognito-userpool-deviceconfiguration-deviceonlyrememberedonuserprompt
		PrimitiveType: Boolean
		UpdateType: Mutable

    .PARAMETER ChallengeRequiredOnNewDevice
		Required: False
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html#cfn-cognito-userpool-deviceconfiguration-challengerequiredonnewdevice
		PrimitiveType: Boolean
		UpdateType: Mutable

    [OutputType('Vaporshell.Resource.Cognito.UserPool.DeviceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DeviceOnlyRememberedOnUserPrompt,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ChallengeRequiredOnNewDevice,
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True" -or $val -eq "False") {
                $val = $val.ToLower()
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPool.DeviceConfiguration'
    }
}
