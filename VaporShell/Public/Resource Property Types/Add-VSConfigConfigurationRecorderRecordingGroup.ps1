function Add-VSConfigConfigurationRecorderRecordingGroup {
    <#
    .SYNOPSIS
        Adds an AWS::Config::ConfigurationRecorder.RecordingGroup resource property to the template

    .DESCRIPTION
        Adds an AWS::Config::ConfigurationRecorder.RecordingGroup resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html

    .PARAMETER AllSupported
        Specifies whether AWS Config records configuration changes for every supported type of regional resource.
If you set this option to true, when AWS Config adds support for a new type of regional resource, it starts recording resources of that type automatically.
If you set this option to true, you cannot enumerate a list of resourceTypes.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-allsupported
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeGlobalResourceTypes
        Specifies whether AWS Config includes all supported types of global resources for example, IAM resources with the resources that it records.
Before you can set this option to true, you must set the allSupported option to true.
If you set this option to true, when AWS Config adds support for a new type of global resource, it starts recording resources of that type automatically.
The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-includeglobalresourcetypes
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ResourceTypes
        A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes for example, AWS::EC2::Instance or AWS::CloudTrail::Trail.
Before you can set this option to true, you must set the allSupported option to false.
If you set this option to true, when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.
For a list of valid resourceTypes values, see the **resourceType Value** column in Supported AWS Resource Types: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-resourcetypes
        DuplicatesAllowed: False
        PrimitiveItemType: String
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
