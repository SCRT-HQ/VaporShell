function Add-VSDAXClusterSSESpecification {
    <#
    .SYNOPSIS
        Adds an AWS::DAX::Cluster.SSESpecification resource property to the template

    .DESCRIPTION
        Adds an AWS::DAX::Cluster.SSESpecification resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html

    .PARAMETER SSEEnabled
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html#cfn-dax-cluster-ssespecification-sseenabled    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DAX.Cluster.SSESpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $SSEEnabled
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DAX.Cluster.SSESpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
