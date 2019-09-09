# Add-VSCloudTrailTrailEventSelector

## SYNOPSIS
Adds an AWS::CloudTrail::Trail.EventSelector resource property to the template.
Use event selectors to further specify the management and data event settings for your trail.
By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events.
When an event occurs in your account, CloudTrail evaluates the event selector for all trails.
For each trail, if the event matches any event selector, the trail processes and logs the event.
If the event doesn't match any event selector, the trail doesn't log the event.

## SYNTAX

```
Add-VSCloudTrailTrailEventSelector [[-DataResources] <Object>] [[-IncludeManagementEvents] <Boolean>]
 [[-ReadWriteType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudTrail::Trail.EventSelector resource property to the template.
Use event selectors to further specify the management and data event settings for your trail.
By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events.
When an event occurs in your account, CloudTrail evaluates the event selector for all trails.
For each trail, if the event matches any event selector, the trail processes and logs the event.
If the event doesn't match any event selector, the trail doesn't log the event.

You can configure up to five event selectors for a trail.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DataResources
CloudTrail supports data event logging for Amazon S3 objects and AWS Lambda functions.
You can specify up to 250 resources for an individual event selector, but the total number of data resources cannot exceed 250 across all event selectors in a trail.
This limit does not apply if you configure resource logging for all data events.
For more information, see Data Events: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events and Limits in AWS CloudTrail: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html in the *AWS CloudTrail User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-dataresources
DuplicatesAllowed: False
ItemType: DataResource
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeManagementEvents
Specify if you want your event selector to include management events for your trail.
For more information, see Management Events: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events in the *AWS CloudTrail User Guide*.
By default, the value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-includemanagementevents
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

### -ReadWriteType
Specify if you want your trail to log read-only events, write-only events, or all.
For example, the EC2 GetConsoleOutput is a read-only API operation and RunInstances is a write-only API operation.
By default, the value is All.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-readwritetype
PrimitiveType: String
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

### Vaporshell.Resource.CloudTrail.Trail.EventSelector
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html)

