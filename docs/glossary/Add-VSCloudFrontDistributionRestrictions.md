# Add-VSCloudFrontDistributionRestrictions

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.Restrictions resource property to the template.
A complex type that identifies ways in which you want to restrict distribution of your content.

## SYNTAX

```
Add-VSCloudFrontDistributionRestrictions [-GeoRestriction] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.Restrictions resource property to the template.
A complex type that identifies ways in which you want to restrict distribution of your content.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -GeoRestriction
A complex type that controls the countries in which your content is distributed.
CloudFront determines the location of your users using MaxMind GeoIP databases.

Type: GeoRestriction
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html#cfn-cloudfront-distribution-restrictions-georestriction
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

### Vaporshell.Resource.CloudFront.Distribution.Restrictions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html)

