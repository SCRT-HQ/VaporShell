# Add-VSSyntheticsCanaryRunConfig

## SYNOPSIS
Adds an AWS::Synthetics::Canary.RunConfig resource property to the template.
A structure that contains input information for a canary run.

## SYNTAX

```
Add-VSSyntheticsCanaryRunConfig [-TimeoutInSeconds] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Synthetics::Canary.RunConfig resource property to the template.
A structure that contains input information for a canary run.

## PARAMETERS

### -TimeoutInSeconds
How long the canary is allowed to run before it must stop.
If you omit this field, the frequency of the canary is used as this value, up to a maximum of 900 seconds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-runconfig.html#cfn-synthetics-canary-runconfig-timeoutinseconds
UpdateType: Mutable
PrimitiveType: Integer

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Synthetics.Canary.RunConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-runconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-runconfig.html)

