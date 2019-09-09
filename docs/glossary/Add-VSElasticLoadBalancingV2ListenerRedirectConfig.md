# Add-VSElasticLoadBalancingV2ListenerRedirectConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::Listener.RedirectConfig resource property to the template.
Information about a redirect action.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRedirectConfig [[-Host] <Object>] [[-Path] <Object>] [[-Port] <Object>]
 [[-Protocol] <Object>] [[-Query] <Object>] [-StatusCode] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::Listener.RedirectConfig resource property to the template.
Information about a redirect action.

A URI consists of the following components: protocol://hostname:port/path?query.
You must modify at least one of the following components to avoid a redirect loop: protocol, hostname, port, or path.
Any components that you do not modify retain their original values.

You can reuse URI components using the following reserved keywords:

+ #{protocol}

+ #{host}

+ #{port}

+ #{path} (the leading "/" is removed

+ #{query}

For example, you can change the path to "/new/#{path}", the hostname to "example.#{host}", or the query to "#{query}&value=xyz".

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Host
The hostname.
This component is not percent-encoded.
The hostname can contain #{host}.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-host
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

### -Path
The absolute path, starting with the leading "/".
This component is not percent-encoded.
The path can contain #{host}, #{path}, and #{port}.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-path
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

### -Port
The port.
You can specify a value from 1 to 65535 or #{port}.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-port
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

### -Protocol
The protocol.
You can specify HTTP, HTTPS, or #{protocol}.
You can redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS.
You cannot redirect HTTPS to HTTP.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-protocol
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
The query parameters, URL-encoded when necessary, but not percent-encoded.
Do not include the leading "?", as it is automatically added.
You can specify any of the reserved keywords.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-query
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StatusCode
The HTTP redirect code.
The redirect is either permanent HTTP 301 or temporary HTTP 302.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-statuscode
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancingV2.Listener.RedirectConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html)

