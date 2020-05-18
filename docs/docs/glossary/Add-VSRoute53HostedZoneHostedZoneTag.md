# Add-VSRoute53HostedZoneHostedZoneTag

## SYNOPSIS
Adds an AWS::Route53::HostedZone.HostedZoneTag resource property to the template.
A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.

## SYNTAX

```
Add-VSRoute53HostedZoneHostedZoneTag [-Key] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53::HostedZone.HostedZoneTag resource property to the template.
A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.

## PARAMETERS

### -Key
The value of Key depends on the operation that you want to perform:
+  **Add a tag to a health check or hosted zone**: Key is the name that you want to give the new tag.
+  **Edit a tag**: Key is the name of the tag that you want to change the Value for.
+  ** Delete a key**: Key is the name of the tag you want to remove.
+  **Give a name to a health check**: Edit the default Name tag.
In the Amazon Route 53 console, the list of your health checks includes a **Name** column that lets you see the name that you've given to each health check.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-key
PrimitiveType: String
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

### -Value
The value of Value depends on the operation that you want to perform:
+  **Add a tag to a health check or hosted zone**: Value is the value that you want to give the new tag.
+  **Edit a tag**: Value is the new value that you want to assign the tag.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-value
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

### Vaporshell.Resource.Route53.HostedZone.HostedZoneTag
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html)

