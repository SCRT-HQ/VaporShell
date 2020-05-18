# Add-VSWAFv2WebACLGeoMatchStatement

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.GeoMatchStatement resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLGeoMatchStatement [[-CountryCodes] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.GeoMatchStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement used to identify web requests based on country of origin.

## PARAMETERS

### -CountryCodes
An array of two-character country codes, for example,  "US", "CN" \], from the alpha-2 country ISO codes of the ISO 3166 international standard.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html#cfn-wafv2-webacl-geomatchstatement-countrycodes
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

### Vaporshell.Resource.WAFv2.WebACL.GeoMatchStatement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html)

