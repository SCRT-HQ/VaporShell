function Add-VSOpsWorksLayerVolumeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::OpsWorks::Layer.VolumeConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::OpsWorks::Layer.VolumeConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html

    .PARAMETER Iops
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-iops    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER MountPoint
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-mountpoint    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER NumberOfDisks
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-numberofdisks    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER RaidLevel
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-raidlevel    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Size
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-size    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER VolumeType
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-volumetype    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpsWorks.Layer.VolumeConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $Iops,
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
        $MountPoint,
        [parameter(Mandatory = $false)]
        [Int]
        $NumberOfDisks,
        [parameter(Mandatory = $false)]
        [Int]
        $RaidLevel,
        [parameter(Mandatory = $false)]
        [Int]
        $Size,
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
        $VolumeType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.Layer.VolumeConfiguration'
    }
}
