# Add-VSGlueMLTransformFindMatchesParameters

## SYNOPSIS
Adds an AWS::Glue::MLTransform.FindMatchesParameters resource property to the template.
The parameters to configure the find matches transform.

## SYNTAX

```
Add-VSGlueMLTransformFindMatchesParameters [[-PrecisionRecallTradeoff] <Object>]
 [[-EnforceProvidedLabels] <Object>] [-PrimaryKeyColumnName] <Object> [[-AccuracyCostTradeoff] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::MLTransform.FindMatchesParameters resource property to the template.
The parameters to configure the find matches transform.

## PARAMETERS

### -PrecisionRecallTradeoff
The value selected when tuning your transform for a balance between precision and recall.
A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a value of 0.0 means a bias for recall.
Because this is a tradeoff, choosing values close to 1.0 means very low recall, and choosing values close to 0.0 results in very low precision.
The precision metric indicates how often your model is correct when it predicts a match.
The recall metric indicates that for an actual match, how often your model predicts the match.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-precisionrecalltradeoff
PrimitiveType: Double
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

### -EnforceProvidedLabels
The value to switch on or off to force the output to match the provided labels from users.
If the value is True, the find matches transform forces the output to match the provided labels.
The results override the normal conflation results.
If the value is False, the find matches transform does not ensure all the labels provided are respected, and the results rely on the trained model.
Note that setting this value to true may increase the conflation execution time.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-enforceprovidedlabels
PrimitiveType: Boolean
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

### -PrimaryKeyColumnName
The name of a column that uniquely identifies rows in the source table.
Used to help identify matching records.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-primarykeycolumnname
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

### -AccuracyCostTradeoff
The value that is selected when tuning your transform for a balance between accuracy and cost.
A value of 0.5 means that the system balances accuracy and cost concerns.
A value of 1.0 means a bias purely for accuracy, which typically results in a higher cost, sometimes substantially higher.
A value of 0.0 means a bias purely for cost, which results in a less accurate FindMatches transform, sometimes with unacceptable accuracy.
Accuracy measures how well the transform finds true positives and true negatives.
Increasing accuracy requires more machine resources and cost.
But it also results in increased recall.
Cost measures how many compute resources, and thus money, are consumed to run the transform.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-accuracycosttradeoff
PrimitiveType: Double
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.MLTransform.FindMatchesParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html)

