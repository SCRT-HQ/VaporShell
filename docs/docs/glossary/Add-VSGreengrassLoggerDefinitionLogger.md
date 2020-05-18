# Add-VSGreengrassLoggerDefinitionLogger

## SYNOPSIS
Adds an AWS::Greengrass::LoggerDefinition.Logger resource property to the template.
\<a name="aws-properties-greengrass-loggerdefinition-logger-description"\>\</a\>A logger represents logging settings for the AWS IoT Greengrass group, which can be stored in CloudWatch and the local file system of your core device.
All log entries include a timestamp, log level, and information about the event.
For more information, see Monitoring with AWS IoT Greengrass Logs: https://docs.aws.amazon.com/greengrass/latest/developerguide/greengrass-logs-overview.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassLoggerDefinitionLogger [[-Space] <Object>] [-Type] <Object> [-Level] <Object> [-Id] <Object>
 [-Component] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::LoggerDefinition.Logger resource property to the template.
\<a name="aws-properties-greengrass-loggerdefinition-logger-description"\>\</a\>A logger represents logging settings for the AWS IoT Greengrass group, which can be stored in CloudWatch and the local file system of your core device.
All log entries include a timestamp, log level, and information about the event.
For more information, see Monitoring with AWS IoT Greengrass Logs: https://docs.aws.amazon.com/greengrass/latest/developerguide/greengrass-logs-overview.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-loggerdefinition-logger-inheritance"\>\</a\> In an AWS CloudFormation template, the Loggers property of the  LoggerDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html property type contains a list of Logger property types.

## PARAMETERS

### -Space
The amount of file space in KB to use when writing logs to the local file system.
This property does not apply for CloudWatch Logs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-space
PrimitiveType: Integer
UpdateType: Immutable

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

### -Type
The storage mechanism for log events.
Valid values are FileSystem or AWSCloudWatch.
When AWSCloudWatch is used, log events are sent to CloudWatch Logs.
When FileSystem is used, log events are stored on the local file system.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-type
PrimitiveType: String
UpdateType: Immutable

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

### -Level
The log-level threshold.
Log events below this threshold are filtered out and aren't stored.
Valid values are DEBUG, INFO recommended, WARN, ERROR, or FATAL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-level
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
A descriptive or arbitrary ID for the logger.
This value must be unique within the logger definition version.
Maximum length is 128 characters with pattern a-zA-Z0-9:_-\]+.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-id
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Component
The source of the log event.
Valid values are GreengrassSystem or Lambda.
When GreengrassSystem is used, events from Greengrass system components are logged.
When Lambda is used, events from user-defined Lambda functions are logged.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-component
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.LoggerDefinition.Logger
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html)

