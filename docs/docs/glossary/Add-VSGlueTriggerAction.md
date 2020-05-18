# Add-VSGlueTriggerAction

## SYNOPSIS
Adds an AWS::Glue::Trigger.Action resource property to the template.
Defines an action to be initiated by a trigger.

## SYNTAX

```
Add-VSGlueTriggerAction [[-NotificationProperty] <Object>] [[-CrawlerName] <Object>] [[-Timeout] <Object>]
 [[-JobName] <Object>] [[-Arguments] <Object>] [[-SecurityConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Trigger.Action resource property to the template.
Defines an action to be initiated by a trigger.

## PARAMETERS

### -NotificationProperty
Specifies configuration properties of a job run notification.

Type: NotificationProperty
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-notificationproperty
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

### -CrawlerName
The name of the crawler to be used with this action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-crawlername
PrimitiveType: String
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

### -Timeout
The JobRun timeout in minutes.
This is the maximum time that a job run can consume resources before it is terminated and enters TIMEOUT status.
The default is 2,880 minutes 48 hours.
This overrides the timeout value set in the parent job.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-timeout
PrimitiveType: Integer
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

### -JobName
The name of a job to be executed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-jobname
PrimitiveType: String
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

### -Arguments
The job arguments used when this trigger fires.
For this job run, they replace the default arguments set in the job definition itself.
You can specify arguments here that your own job-execution script consumes, in addition to arguments that AWS Glue itself consumes.
For information about how to specify and consume your own job arguments, see Calling AWS Glue APIs in Python: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html in the *AWS Glue Developer Guide*.
For information about the key-value pairs that AWS Glue consumes to set up your job, see the Special Parameters Used by AWS Glue: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html topic in the developer guide.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-arguments
PrimitiveType: Json
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

### -SecurityConfiguration
The name of the SecurityConfiguration structure to be used with this action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-securityconfiguration
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.Trigger.Action
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html)

