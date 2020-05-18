# Add-VSRoute53RecordSetGroupGeoLocation

## SYNOPSIS
Adds an AWS::Route53::RecordSetGroup.GeoLocation resource property to the template.
A complex type that contains information about a geographic location.

## SYNTAX

```
Add-VSRoute53RecordSetGroupGeoLocation [[-ContinentCode] <Object>] [[-CountryCode] <Object>]
 [[-SubdivisionCode] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53::RecordSetGroup.GeoLocation resource property to the template.
A complex type that contains information about a geographic location.

## PARAMETERS

### -ContinentCode
For geolocation resource record sets, a two-letter abbreviation that identifies a continent.
Route 53 supports the following continent codes:
+ **AF**: Africa
+ **AN**: Antarctica
+ **AS**: Asia
+ **EU**: Europe
+ **OC**: Oceania
+ **NA**: North America
+ **SA**: South America
Constraint: Specifying ContinentCode with either CountryCode or SubdivisionCode returns an InvalidInput error.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordsetgroup-geolocation-continentcode
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

### -CountryCode
For geolocation resource record sets, the two-letter code for a country.
Route 53 uses the two-letter country codes that are specified in ISO standard 3166-1 alpha-2: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-countrycode
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

### -SubdivisionCode
For geolocation resource record sets, the two-letter code for a state of the United States.
Route 53 doesn't support any other values for SubdivisionCode.
For a list of state abbreviations, see Appendix B: Two-Letter State and Possession Abbreviations: https://pe.usps.com/text/pub28/28apb.htm on the United States Postal Service website.
If you specify subdivisioncode, you must also specify US for CountryCode.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-subdivisioncode
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

### Vaporshell.Resource.Route53.RecordSetGroup.GeoLocation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html)

