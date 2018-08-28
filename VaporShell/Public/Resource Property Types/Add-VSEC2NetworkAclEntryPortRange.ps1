function Add-VSEC2NetworkAclEntryPortRange {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkAclEntry.PortRange resource property to the template

    .DESCRIPTION
        Adds an AWS::EC2::NetworkAclEntry.PortRange resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html

    .PARAMETER From
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-from    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER To
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-to    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.NetworkAclEntry.PortRange')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $From,
        [parameter(Mandatory = $false)]
        [Int]
        $To
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkAclEntry.PortRange'
    }
}
