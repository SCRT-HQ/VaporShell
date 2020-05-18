# Add-VSMediaStoreContainerCorsRule

## SYNOPSIS
Adds an AWS::MediaStore::Container.CorsRule resource property to the template.
A rule for a CORS policy.
You can add up to 100 rules to a CORS policy.
If more than one rule applies, the service uses the first applicable rule listed.

## SYNTAX

```
Add-VSMediaStoreContainerCorsRule [[-AllowedMethods] <Object>] [[-AllowedOrigins] <Object>]
 [[-ExposeHeaders] <Object>] [[-MaxAgeSeconds] <Object>] [[-AllowedHeaders] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaStore::Container.CorsRule resource property to the template.
A rule for a CORS policy.
You can add up to 100 rules to a CORS policy.
If more than one rule applies, the service uses the first applicable rule listed.

## PARAMETERS

### -AllowedMethods
Identifies an HTTP method that the origin that is specified in the rule is allowed to execute.
Each CORS rule must contain at least one AllowedMethods and one AllowedOrigins element.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedmethods
UpdateType: Immutable

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

### -AllowedOrigins
One or more response headers that you want users to be able to access from their applications for example, from a JavaScript XMLHttpRequest object.
Each CORS rule must have at least one AllowedOrigins element.
The string value can include only one wildcard character *, for example, http://*.example.com.
Additionally, you can specify only one wildcard character to allow cross-origin access for all origins.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedorigins
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

### -ExposeHeaders
One or more headers in the response that you want users to be able to access from their applications for example, from a JavaScript XMLHttpRequest object.
This element is optional for each rule.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-exposeheaders
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

### -MaxAgeSeconds
The time in seconds that your browser caches the preflight response for the specified resource.
A CORS rule can have only one MaxAgeSeconds element.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-maxageseconds
PrimitiveType: Integer
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

### -AllowedHeaders
Specifies which headers are allowed in a preflight OPTIONS request through the Access-Control-Request-Headers header.
Each header name that is specified in Access-Control-Request-Headers must have a corresponding entry in the rule.
Only the headers that were requested are sent back.
This element can contain only one wildcard character *.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedheaders
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MediaStore.Container.CorsRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html)

