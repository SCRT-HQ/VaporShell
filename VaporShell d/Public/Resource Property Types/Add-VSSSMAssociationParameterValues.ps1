function Add-VSSSMAssociationParameterValues {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::Association.ParameterValues resource property to the template

    .DESCRIPTION
        Adds an AWS::SSM::Association.ParameterValues resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html

    .PARAMETER ParameterValues
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html#cfn-ssm-association-parametervalues-parametervalues    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: True    
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
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.Association.ParameterValues'
    }
}
