# Add-VSLambdaEventSourceMappingOnFailure

## SYNOPSIS
Adds an AWS::Lambda::EventSourceMapping.OnFailure resource property to the template.
A destination for events that failed processing.

## SYNTAX

```
Add-VSLambdaEventSourceMappingOnFailure [-Destination] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::EventSourceMapping.OnFailure resource property to the template.
A destination for events that failed processing.

## PARAMETERS

### -Destination
The Amazon Resource Name ARN of the destination resource.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html#cfn-lambda-eventsourcemapping-onfailure-destination
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Lambda.EventSourceMapping.OnFailure
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html)

