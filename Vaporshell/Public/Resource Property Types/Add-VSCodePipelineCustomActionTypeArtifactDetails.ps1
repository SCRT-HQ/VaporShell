function Add-VSCodePipelineCustomActionTypeArtifactDetails {
    <#
    .SYNOPSIS
        Adds an AWS::CodePipeline::CustomActionType.ArtifactDetails resource property to the template

    .DESCRIPTION
        Adds an AWS::CodePipeline::CustomActionType.ArtifactDetails resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html

    .PARAMETER MaximumCount
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-maximumcount    
		PrimitiveType: Integer    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER MinimumCount
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-minimumcount    
		PrimitiveType: Integer    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodePipeline.CustomActionType.ArtifactDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $MaximumCount,
        [parameter(Mandatory = $true)]
        [Int]
        $MinimumCount
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodePipeline.CustomActionType.ArtifactDetails'
    }
}
