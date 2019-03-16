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
        DuplicatesAllowed: False    
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Config.ConfigurationRecorder.RecordingGroup'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
