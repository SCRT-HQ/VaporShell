function Add-VSCognitoUserPoolUsernameConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPool.UsernameConfiguration resource property to the template. The UsernameConfiguration property type specifies case sensitivity on the username input for the selected sign-in option.

    .DESCRIPTION
        Adds an AWS::Cognito::UserPool.UsernameConfiguration resource property to the template.
The UsernameConfiguration property type specifies case sensitivity on the username input for the selected sign-in option.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html

    .PARAMETER CaseSensitive
        Specifies whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.
Valid values include:
+  ** True **: Enables case sensitivity for all username input. When this option is set to True, users must sign in using the exact capitalization of their given username. For example, “UserName”. This is the default value.
+  ** False **: Enables case insensitivity for all username input. For example, when this option is set to False, users will be able to sign in using either "username" or "Username". This option also enables both preferred_username and email alias to be case insensitive, in addition to the username attribute.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html#cfn-cognito-userpool-usernameconfiguration-casesensitive
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.UserPool.UsernameConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CaseSensitive
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPool.UsernameConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
