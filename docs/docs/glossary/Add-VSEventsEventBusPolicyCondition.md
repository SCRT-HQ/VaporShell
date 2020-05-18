# Add-VSEventsEventBusPolicyCondition

## SYNOPSIS
Adds an AWS::Events::EventBusPolicy.Condition resource property to the template.
A JSON string which you can use to limit the event bus permissions you are granting to only accounts that fulfill the condition.
Currently, the only supported condition is membership in a certain AWS organization.
The string must contain Type, Key, and Value fields.
The Value field specifies the ID of the AWS organization.
Following is an example value for Condition:

## SYNTAX

```
Add-VSEventsEventBusPolicyCondition [[-Type] <Object>] [[-Value] <Object>] [[-Key] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::EventBusPolicy.Condition resource property to the template.
A JSON string which you can use to limit the event bus permissions you are granting to only accounts that fulfill the condition.
Currently, the only supported condition is membership in a certain AWS organization.
The string must contain Type, Key, and Value fields.
The Value field specifies the ID of the AWS organization.
Following is an example value for Condition:

'{"Type" : "StringEquals", "Key": "aws:PrincipalOrgID", "Value": "o-1234567890"}'

## PARAMETERS

### -Type
Specifies the type of condition.
Currently the only supported value is StringEquals.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-type
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

### -Value
Specifies the value for the key.
Currently, this must be the ID of the organization.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-value
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

### -Key
Specifies the key for the condition.
Currently the only supported key is aws:PrincipalOrgID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-key
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

### Vaporshell.Resource.Events.EventBusPolicy.Condition
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html)

