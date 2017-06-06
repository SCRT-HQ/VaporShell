function Add-CodePipelinePipelineStageDeclaration {
    <#
    .SYNOPSIS
        Adds an AWS::CodePipeline::Pipeline.StageDeclaration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html

    .PARAMETER Actions
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-actions
		DuplicatesAllowed: False
		ItemType: ActionDeclaration
		Required: True
		Type: List
		UpdateType: Mutable

    .PARAMETER Blockers
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-blockers
		DuplicatesAllowed: False
		ItemType: BlockerDeclaration
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER Name
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-name
		PrimitiveType: String
		Required: True
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodePipeline.Pipeline.StageDeclaration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodePipeline.Pipeline.ActionDeclaration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Actions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodePipeline.Pipeline.BlockerDeclaration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Blockers,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodePipeline.Pipeline.StageDeclaration'
    }
}
