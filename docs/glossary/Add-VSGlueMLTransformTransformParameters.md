# Add-VSGlueMLTransformTransformParameters

## SYNOPSIS
Adds an AWS::Glue::MLTransform.TransformParameters resource property to the template.
The algorithm-specific parameters that are associated with the machine learning transform.

## SYNTAX

```
Add-VSGlueMLTransformTransformParameters [-TransformType] <Object> [[-FindMatchesParameters] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::MLTransform.TransformParameters resource property to the template.
The algorithm-specific parameters that are associated with the machine learning transform.

## PARAMETERS

### -TransformType
The type of machine learning transform.
FIND_MATCHES is the only option.
For information about the types of machine learning transforms, see Creating Machine Learning Transforms: https://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-transformtype
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

### -FindMatchesParameters
The parameters for the find matches algorithm.

Type: FindMatchesParameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.MLTransform.TransformParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html)

