# Add-VSElasticsearchDomainZoneAwarenessConfig

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.ZoneAwarenessConfig resource property to the template.
Specifies zone awareness configuration options.
Only required if ZoneAwarenessEnabled is true.

## SYNTAX

```
Add-VSElasticsearchDomainZoneAwarenessConfig [[-AvailabilityZoneCount] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.ZoneAwarenessConfig resource property to the template.
Specifies zone awareness configuration options.
Only required if ZoneAwarenessEnabled is true.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AvailabilityZoneCount
If you enabled multiple Availability Zones AZs, the number of AZs that you want the domain to use.
Valid values are 2 and 3.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html#cfn-elasticsearch-domain-zoneawarenessconfig-availabilityzonecount
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Elasticsearch.Domain.ZoneAwarenessConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html)

