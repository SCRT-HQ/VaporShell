function Add-VSEMRClusterSpotProvisioningSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.SpotProvisioningSpecification resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.SpotProvisioningSpecification resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html

    .PARAMETER BlockDurationMinutes
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-blockdurationminutes    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER TimeoutAction
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutaction    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER TimeoutDurationMinutes
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutdurationminutes    
		PrimitiveType: Integer    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.SpotProvisioningSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $BlockDurationMinutes,
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
        $TimeoutAction,
        [parameter(Mandatory = $true)]
        [Int]
        $TimeoutDurationMinutes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.SpotProvisioningSpecification'
    }
}
