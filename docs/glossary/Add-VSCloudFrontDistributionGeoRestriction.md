# Add-VSCloudFrontDistributionGeoRestriction

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.GeoRestriction resource property to the template.
A complex type that controls the countries in which your content is distributed.
CloudFront determines the location of your users using MaxMind GeoIP databases.

## SYNTAX

```
Add-VSCloudFrontDistributionGeoRestriction [[-Locations] <Object>] [-RestrictionType] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.GeoRestriction resource property to the template.
A complex type that controls the countries in which your content is distributed.
CloudFront determines the location of your users using MaxMind GeoIP databases.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Locations
A complex type that contains a Location element for each country in which you want CloudFront either to distribute your content whitelist or not distribute your content blacklist.
The Location element is a two-letter, uppercase country code for a country that you want to include in your blacklist or whitelist.
Include one Location element for each country.
CloudFront and MaxMind both use ISO 3166 country codes.
For the current list of countries and the corresponding codes, see ISO 3166-1-alpha-2 code on the *International Organization for Standardization* website.
You can also refer to the country list on the CloudFront console, which includes both country names and codes.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-locations
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

### -RestrictionType
The method that you want to use to restrict distribution of your content by country:
+  none: No geo restriction is enabled, meaning access to content is not restricted by client geo location.
+  blacklist: The Location elements specify the countries in which you don't want CloudFront to distribute your content.
+  whitelist: The Location elements specify the countries in which you want CloudFront to distribute your content.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-restrictiontype
PrimitiveType: String
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

### Vaporshell.Resource.CloudFront.Distribution.GeoRestriction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html)

