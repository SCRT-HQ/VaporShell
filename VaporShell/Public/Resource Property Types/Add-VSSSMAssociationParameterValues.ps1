function Add-VSSSMAssociationParameterValues {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::Association.ParameterValues resource property to the template. ParameterValues is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies the parameters for the runtime configuration of the document.

    .DESCRIPTION
        Adds an AWS::SSM::Association.ParameterValues resource property to the template.
ParameterValues is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies the parameters for the runtime configuration of the document.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html

    .PARAMETER ParameterValues
        The parameters for the runtime configuration of the document.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html#cfn-ssm-association-parametervalues-parametervalues
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.Association.ParameterValues')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ParameterValues
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.Association.ParameterValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
