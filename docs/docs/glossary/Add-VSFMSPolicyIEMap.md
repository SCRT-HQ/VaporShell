# Add-VSFMSPolicyIEMap

## SYNOPSIS
Adds an AWS::FMS::Policy.IEMap resource property to the template.
Specifies the AWS account IDs to exclude from or include in the policy.
Used for the policy's IncludeMap and ExcludeMap.

## SYNTAX

```
Add-VSFMSPolicyIEMap [[-ACCOUNT] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::FMS::Policy.IEMap resource property to the template.
Specifies the AWS account IDs to exclude from or include in the policy.
Used for the policy's IncludeMap and ExcludeMap.

The key to the map is ACCOUNT.
For example, a valid IEMap would be {"ACCOUNT" : "accountID1", "accountID2"\]}.

## PARAMETERS

### -ACCOUNT
The account list for the map.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-account
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### Vaporshell.Resource.FMS.Policy.IEMap
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html)

