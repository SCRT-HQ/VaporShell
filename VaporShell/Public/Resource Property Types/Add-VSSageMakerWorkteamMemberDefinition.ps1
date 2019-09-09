function Add-VSSageMakerWorkteamMemberDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Workteam.MemberDefinition resource property to the template. Defines the Amazon Cognito user group that is part of a work team.

    .DESCRIPTION
        Adds an AWS::SageMaker::Workteam.MemberDefinition resource property to the template.
Defines the Amazon Cognito user group that is part of a work team.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html

    .PARAMETER CognitoMemberDefinition
        The Amazon Cognito user group that is part of the work team.

        Type: CognitoMemberDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html#cfn-sagemaker-workteam-memberdefinition-cognitomemberdefinition
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Workteam.MemberDefinition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $CognitoMemberDefinition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Workteam.MemberDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
