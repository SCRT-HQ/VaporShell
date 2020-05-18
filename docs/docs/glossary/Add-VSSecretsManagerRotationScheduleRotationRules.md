# Add-VSSecretsManagerRotationScheduleRotationRules

## SYNOPSIS
Adds an AWS::SecretsManager::RotationSchedule.RotationRules resource property to the template.
The RotationRules property is used as part of the AWS::SecretsManager::RotationSchedule: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html resource type to configure how and when Secrets Manager performs rotation for the associated secret.

## SYNTAX

```
Add-VSSecretsManagerRotationScheduleRotationRules [[-AutomaticallyAfterDays] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SecretsManager::RotationSchedule.RotationRules resource property to the template.
The RotationRules property is used as part of the AWS::SecretsManager::RotationSchedule: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html resource type to configure how and when Secrets Manager performs rotation for the associated secret.

## PARAMETERS

### -AutomaticallyAfterDays
Specifies the number of days after the previous rotation before Secrets Manager triggers the next automatic rotation.
You can specify a minimum value of 1 and a maximum value of 1000.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-automaticallyafterdays
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

### Vaporshell.Resource.SecretsManager.RotationSchedule.RotationRules
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html)

