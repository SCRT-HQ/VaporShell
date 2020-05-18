# Add-VSCloudFrontDistributionStatusCodes

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.StatusCodes resource property to the template.
A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.

## SYNTAX

```
Add-VSCloudFrontDistributionStatusCodes [-Quantity] <Object> [-Items] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.StatusCodes resource property to the template.
A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.

## PARAMETERS

### -Quantity
The number of status codes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-statuscodes.html#cfn-cloudfront-distribution-statuscodes-quantity
PrimitiveType: Integer
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

### -Items
The items status codes for an origin group.

PrimitiveItemType: Integer
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-statuscodes.html#cfn-cloudfront-distribution-statuscodes-items
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.StatusCodes
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-statuscodes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-statuscodes.html)

