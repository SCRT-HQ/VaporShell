# Add-VSSSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters

## SYNOPSIS
Adds an AWS::SSM::MaintenanceWindowTask.MaintenanceWindowLambdaParameters resource property to the template.
The MaintenanceWindowLambdaParameters property type specifies the parameters for a LAMBDA task type for a maintenance window task in AWS Systems Manager.

## SYNTAX

```
Add-VSSSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters [[-ClientContext] <Object>]
 [[-Qualifier] <Object>] [[-Payload] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::MaintenanceWindowTask.MaintenanceWindowLambdaParameters resource property to the template.
The MaintenanceWindowLambdaParameters property type specifies the parameters for a LAMBDA task type for a maintenance window task in AWS Systems Manager.

MaintenanceWindowLambdaParameters is a property of the TaskInvocationParameters: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html property type.

## PARAMETERS

### -ClientContext
Client-specific information to pass to the Lambda function that you're invoking.
You can then use the context variable to process the client information in your Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowlambdaparameters-clientcontext
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

### -Qualifier
A Lambda function version or alias name.
If you specify a function version, the action uses the qualified function Amazon Resource Name ARN to invoke a specific Lambda function.
If you specify an alias name, the action uses the alias ARN to invoke the Lambda function version that the alias points to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowlambdaparameters-qualifier
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

### -Payload
JSON to provide to your Lambda function as input.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowlambdaparameters-payload
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

### Vaporshell.Resource.SSM.MaintenanceWindowTask.MaintenanceWindowLambdaParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html)

