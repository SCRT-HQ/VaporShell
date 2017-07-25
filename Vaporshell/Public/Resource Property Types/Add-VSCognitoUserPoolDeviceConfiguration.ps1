function Add-VSCognitoUserPoolDeviceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPool.DeviceConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::Cognito::UserPool.DeviceConfiguration resource property to the template

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

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.UserPool.DeviceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DeviceOnlyRememberedOnUserPrompt,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ChallengeRequiredOnNewDevice
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPool.DeviceConfiguration'
    }
}
