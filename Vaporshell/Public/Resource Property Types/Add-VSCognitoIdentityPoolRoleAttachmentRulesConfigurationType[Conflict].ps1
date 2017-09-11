function Add-VSCognitoIdentityPoolRoleAttachmentRulesConfigurationType {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::IdentityPoolRoleAttachment.RulesConfigurationType resource property to the template

    .DESCRIPTION
        Adds an AWS::Cognito::IdentityPoolRoleAttachment.RulesConfigurationType resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.IdentityPoolRoleAttachment.RulesConfigurationType')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.IdentityPoolRoleAttachment.RulesConfigurationType'
    }
}
