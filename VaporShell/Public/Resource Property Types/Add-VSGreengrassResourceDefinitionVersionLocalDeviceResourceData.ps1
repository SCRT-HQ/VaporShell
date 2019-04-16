function Add-VSGreengrassResourceDefinitionVersionLocalDeviceResourceData {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinitionVersion.LocalDeviceResourceData resource property to the template

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinitionVersion.LocalDeviceResourceData resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html

    .PARAMETER SourcePath
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-sourcepath    
		PrimitiveType: String    
		UpdateType: Immutable    

    .PARAMETER GroupOwnerSetting
		Type: GroupOwnerSetting    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-groupownersetting    
		UpdateType: Immutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.LocalDeviceResourceData')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SourcePath,
        [parameter(Mandatory = $false)]
        $GroupOwnerSetting
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.LocalDeviceResourceData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
