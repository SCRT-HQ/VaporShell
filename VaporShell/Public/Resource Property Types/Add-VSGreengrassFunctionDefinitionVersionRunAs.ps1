function Add-VSGreengrassFunctionDefinitionVersionRunAs {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::FunctionDefinitionVersion.RunAs resource property to the template

    .DESCRIPTION
        Adds an AWS::Greengrass::FunctionDefinitionVersion.RunAs resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html

    .PARAMETER Uid
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-uid    
		PrimitiveType: Integer    
		UpdateType: Immutable    

    .PARAMETER Gid
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-gid    
		PrimitiveType: Integer    
		UpdateType: Immutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.RunAs')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $Uid,
        [parameter(Mandatory = $false)]
        [Int]
        $Gid
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.RunAs'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
