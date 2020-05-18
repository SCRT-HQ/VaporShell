# Add-VSKinesisAnalyticsApplicationInputParallelism

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.InputParallelism resource property to the template.
Describes the number of in-application streams to create for a given streaming source.
For information about parallelism, see Configuring Application Input: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationInputParallelism [[-Count] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.InputParallelism resource property to the template.
Describes the number of in-application streams to create for a given streaming source.
For information about parallelism, see Configuring Application Input: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.

## PARAMETERS

### -Count
Number of in-application streams to create.
For more information, see Limits: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html#cfn-kinesisanalytics-application-inputparallelism-count
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalytics.Application.InputParallelism
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html)

