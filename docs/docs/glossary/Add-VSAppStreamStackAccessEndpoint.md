# Add-VSAppStreamStackAccessEndpoint

## SYNOPSIS
Adds an AWS::AppStream::Stack.AccessEndpoint resource property to the template.
Describes an interface VPC endpoint (interface endpoint that lets you create a private connection between the virtual private cloud (VPC that you specify and AppStream 2.0.
When you specify an interface endpoint for a stack, users of the stack can connect to AppStream 2.0 only through that endpoint.
When you specify an interface endpoint for an image builder, administrators can connect to the image builder only through that endpoint.

## SYNTAX

```
Add-VSAppStreamStackAccessEndpoint [-EndpointType] <Object> [-VpceId] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppStream::Stack.AccessEndpoint resource property to the template.
Describes an interface VPC endpoint (interface endpoint that lets you create a private connection between the virtual private cloud (VPC that you specify and AppStream 2.0.
When you specify an interface endpoint for a stack, users of the stack can connect to AppStream 2.0 only through that endpoint.
When you specify an interface endpoint for an image builder, administrators can connect to the image builder only through that endpoint.

## PARAMETERS

### -EndpointType
The type of interface endpoint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html#cfn-appstream-stack-accessendpoint-endpointtype
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

### -VpceId
The identifier ID of the VPC in which the interface endpoint is used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html#cfn-appstream-stack-accessendpoint-vpceid
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

### Vaporshell.Resource.AppStream.Stack.AccessEndpoint
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html)

