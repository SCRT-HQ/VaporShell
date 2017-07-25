function Add-VSEMRInstanceGroupConfigEbsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceGroupConfig.EbsConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::InstanceGroupConfig.EbsConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html

    .PARAMETER EbsBlockDeviceConfigs
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfigs    
		DuplicatesAllowed: False    
		ItemType: EbsBlockDeviceConfig    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER EbsOptimized
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsoptimized    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceGroupConfig.EbsConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EMR.InstanceGroupConfig.EbsBlockDeviceConfig"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $EbsBlockDeviceConfigs,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $EbsOptimized
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceGroupConfig.EbsConfiguration'
    }
}
