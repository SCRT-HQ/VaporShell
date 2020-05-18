# Add-VSPinpointCampaignWriteTreatmentResource

## SYNOPSIS
Adds an AWS::Pinpoint::Campaign.WriteTreatmentResource resource property to the template.
Specifies the settings for a campaign treatment.
A *treatment* is a variation of a campaign that's used for A/B testing of a campaign.

## SYNTAX

```
Add-VSPinpointCampaignWriteTreatmentResource [[-TreatmentDescription] <Object>]
 [[-MessageConfiguration] <Object>] [[-Schedule] <Object>] [[-SizePercent] <Object>]
 [[-TreatmentName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Campaign.WriteTreatmentResource resource property to the template.
Specifies the settings for a campaign treatment.
A *treatment* is a variation of a campaign that's used for A/B testing of a campaign.

## PARAMETERS

### -TreatmentDescription
A custom description of the treatment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-treatmentdescription
PrimitiveType: String
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

### -MessageConfiguration
The message configuration settings for the treatment.

Type: MessageConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-messageconfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Schedule
The schedule settings for the treatment.

Type: Schedule
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-schedule
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

### -SizePercent
The allocated percentage of users segment members to send the treatment to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-sizepercent
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TreatmentName
A custom name for the treatment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-treatmentname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.Campaign.WriteTreatmentResource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html)

