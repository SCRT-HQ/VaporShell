# Add-VSConfigConfigurationRecorderRecordingGroup

## SYNOPSIS
Adds an AWS::Config::ConfigurationRecorder.RecordingGroup resource property to the template.
Specifies the types of AWS resource for which AWS Config records configuration changes.

## SYNTAX

```
Add-VSConfigConfigurationRecorderRecordingGroup [[-AllSupported] <Boolean>]
 [[-IncludeGlobalResourceTypes] <Boolean>] [[-ResourceTypes] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::ConfigurationRecorder.RecordingGroup resource property to the template.
Specifies the types of AWS resource for which AWS Config records configuration changes.

In the recording group, you specify whether all supported types or specific types of resources are recorded.

By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running.
Regional resources are tied to a region and can be used only in that region.
Examples of regional resources are EC2 instances and EBS volumes.

You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources.
Global resources are not tied to an individual region and can be used in all regions.

**Important**

The configuration details for any global resource are the same in all regions.
If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region.
These configuration items will contain identical data.
To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.

If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the resourceTypes parameter.

For a list of supported resource types, see Supported Resource Types: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources.

For more information, see Selecting Which Resources AWS Config Records: https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllSupported
Specifies whether AWS Config records configuration changes for every supported type of regional resource.
If you set this option to true, when AWS Config adds support for a new type of regional resource, it starts recording resources of that type automatically.
If you set this option to true, you cannot enumerate a list of resourceTypes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-allsupported
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeGlobalResourceTypes
Specifies whether AWS Config includes all supported types of global resources for example, IAM resources with the resources that it records.
Before you can set this option to true, you must set the allSupported option to true.
If you set this option to true, when AWS Config adds support for a new type of global resource, it starts recording resources of that type automatically.
The configuration details for any global resource are the same in all regions.
To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-includeglobalresourcetypes
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceTypes
A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes for example, AWS::EC2::Instance or AWS::CloudTrail::Trail.
Before you can set this option to true, you must set the allSupported option to false.
If you set this option to true, when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.
For a list of valid resourceTypes values, see the **resourceType Value** column in Supported AWS Resource Types: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-resourcetypes
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.ConfigurationRecorder.RecordingGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html)

