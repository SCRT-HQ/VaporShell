function Add-VSEMRClusterMetricDimension {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.MetricDimension resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.MetricDimension resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-metricdimension.html

    .PARAMETER Key
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-metricdimension.html#cfn-elasticmapreduce-cluster-metricdimension-key    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER Value
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-metricdimension.html#cfn-elasticmapreduce-cluster-metricdimension-value    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.MetricDimension')]
    [cmdletbinding()]
    Param
    (
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
        $Key,
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
        $Value
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($psParamKey in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $psParamKey).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $psParamKey -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.MetricDimension'
    }
}
