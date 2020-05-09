# Add-VSLambdaLayerVersionContent

## SYNOPSIS
Adds an AWS::Lambda::LayerVersion.Content resource property to the template.
A ZIP archive that contains the contents of an AWS Lambda layer: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.

## SYNTAX

```
Add-VSLambdaLayerVersionContent [[-S3ObjectVersion] <Object>] [-S3Bucket] <Object> [-S3Key] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::LayerVersion.Content resource property to the template.
A ZIP archive that contains the contents of an AWS Lambda layer: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.

## PARAMETERS

### -S3ObjectVersion
For versioned objects, the version of the layer archive object to use.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3objectversion
PrimitiveType: String
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

### -S3Bucket
The Amazon S3 bucket of the layer archive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3bucket
PrimitiveType: String
UpdateType: Immutable

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

### -S3Key
The Amazon S3 key of the layer archive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3key
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Lambda.LayerVersion.Content
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html)

