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

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ContinentCode
The two-letter code for the continent.
Valid values: AF | AN | AS | EU | OC | NA | SA
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
The two-letter code for the country.

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
The code for the subdivision.
Route 53 currently supports only states in the United States.

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

