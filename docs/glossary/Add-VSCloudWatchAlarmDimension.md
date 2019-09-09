# Add-VSCloudWatchAlarmDimension

## SYNOPSIS
Adds an AWS::CloudWatch::Alarm.Dimension resource property to the template.
Dimension is an embedded property of the AWS::CloudWatch::Alarm type.
Dimensions are arbitrary name/value pairs that can be associated with a CloudWatch metric.
You can specify a maximum of 10 dimensions for a given metric.

## SYNTAX

```
Add-VSCloudWatchAlarmDimension [-Name] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudWatch::Alarm.Dimension resource property to the template.
Dimension is an embedded property of the AWS::CloudWatch::Alarm type.
Dimensions are arbitrary name/value pairs that can be associated with a CloudWatch metric.
You can specify a maximum of 10 dimensions for a given metric.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Name
The name of the dimension, from 1-255 characters in length.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html#cfn-cloudwatch-alarm-dimension-name
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The value for the dimension, from 1-255 characters in length.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html#cfn-cloudwatch-alarm-dimension-value
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudWatch.Alarm.Dimension
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html)

