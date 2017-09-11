function Add-VSCodePipelinePipelineActionDeclaration {
    <#
    .SYNOPSIS
        Adds an AWS::CodePipeline::Pipeline.ActionDeclaration resource property to the template

    .DESCRIPTION
        Adds an AWS::CodePipeline::Pipeline.ActionDeclaration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html

    .PARAMETER ActionTypeId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid    
		Required: True    
		Type: ActionTypeId    
		UpdateType: Mutable    

    .PARAMETER Configuration
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-configuration    
		PrimitiveType: Json    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER InputArtifacts
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-inputartifacts    
		DuplicatesAllowed: False    
		ItemType: InputArtifact    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER Name
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-name    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER OutputArtifacts
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts    
		DuplicatesAllowed: False    
		ItemType: OutputArtifact    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER RoleArn
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-rolearn    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER RunOrder
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-runorder    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodePipeline.Pipeline.ActionDeclaration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ActionTypeId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                try {
                    $convertible = ConvertTo-Json -InputObject  -Depth 10 -ErrorAction Stop
                    Remove-Variable convertible -ErrorAction SilentlyContinue
                    $true
                }
                catch {
                    throw "You must specify a JSON string for this parameter!"
                }
            })]
        [System.String]
        $Configuration,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodePipeline.Pipeline.InputArtifact"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $InputArtifacts,
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
        $Name,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodePipeline.Pipeline.OutputArtifact"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $OutputArtifacts,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $RoleArn,
        [parameter(Mandatory = $false)]
        [Int]
        $RunOrder
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodePipeline.Pipeline.ActionDeclaration'
    }
}
