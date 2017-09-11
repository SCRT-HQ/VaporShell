function Add-VSEventsRuleInputTransformer {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Rule.InputTransformer resource property to the template

    .DESCRIPTION
        Adds an AWS::Events::Rule.InputTransformer resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html

    .PARAMETER InputPathsMap
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputpathsmap    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: Map    
		UpdateType: Mutable    

    .PARAMETER InputTemplate
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputtemplate    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Events.Rule.InputTransformer')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $InputPathsMap,
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
        $InputTemplate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Events.Rule.InputTransformer'
    }
}
