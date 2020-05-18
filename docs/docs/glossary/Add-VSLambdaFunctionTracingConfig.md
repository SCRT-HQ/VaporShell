# Add-VSLambdaFunctionTracingConfig

## SYNOPSIS
Adds an AWS::Lambda::Function.TracingConfig resource property to the template.
The function's AWS X-Ray tracing configuration.
To sample and record incoming requests, set Mode to Active.

## SYNTAX

```
Add-VSLambdaFunctionTracingConfig [[-Mode] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::Function.TracingConfig resource property to the template.
The function's AWS X-Ray tracing configuration.
To sample and record incoming requests, set Mode to Active.

## PARAMETERS

### -Mode
The tracing mode.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html#cfn-lambda-function-tracingconfig-mode
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Lambda.Function.TracingConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html)

