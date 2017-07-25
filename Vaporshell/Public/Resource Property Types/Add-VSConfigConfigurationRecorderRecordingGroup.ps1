function Add-VSConfigConfigurationRecorderRecordingGroup {
    <#
    .SYNOPSIS
        Adds an AWS::Config::ConfigurationRecorder.RecordingGroup resource property to the template

    .DESCRIPTION
        Adds an AWS::Config::ConfigurationRecorder.RecordingGroup resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html

    .PARAMETER AllSupported
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-allsupported    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER IncludeGlobalResourceTypes
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-includeglobalresourcetypes    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ResourceTypes
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-resourcetypes    
		DuplicatesAllowed: True    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Config.ConfigurationRecorder.RecordingGroup')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AllSupported,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeGlobalResourceTypes,
        [parameter(Mandatory = $false)]
        $ResourceTypes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Config.ConfigurationRecorder.RecordingGroup'
    }
}
