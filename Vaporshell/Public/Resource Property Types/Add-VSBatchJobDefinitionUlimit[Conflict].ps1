function Add-VSBatchJobDefinitionUlimit {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.Ulimit resource property to the template

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.Ulimit resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html

    .PARAMETER SoftLimit
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-softlimit    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER HardLimit
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-hardlimit    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER Name
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-name    
		PrimitiveType: String    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.JobDefinition.Ulimit')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $SoftLimit,
        [parameter(Mandatory = $true)]
        [Int]
        $HardLimit,
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
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.Ulimit'
    }
}
