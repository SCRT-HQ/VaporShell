function Add-VSCognitoUserPoolAdminCreateUserConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPool.AdminCreateUserConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::Cognito::UserPool.AdminCreateUserConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html

    .PARAMETER InviteMessageTemplate
		Type: InviteMessageTemplate    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-invitemessagetemplate    
		UpdateType: Mutable    

    .PARAMETER UnusedAccountValidityDays
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-unusedaccountvaliditydays    
		PrimitiveType: Double    
		UpdateType: Mutable    

    .PARAMETER AllowAdminCreateUserOnly
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-allowadmincreateuseronly    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.UserPool.AdminCreateUserConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $InviteMessageTemplate,
        [parameter(Mandatory = $false)]
        [System.Double]
        $UnusedAccountValidityDays,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AllowAdminCreateUserOnly
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPool.AdminCreateUserConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
