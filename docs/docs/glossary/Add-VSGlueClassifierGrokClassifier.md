# Add-VSGlueClassifierGrokClassifier

## SYNOPSIS
Adds an AWS::Glue::Classifier.GrokClassifier resource property to the template.
A classifier that uses grok patterns.

## SYNTAX

```
Add-VSGlueClassifierGrokClassifier [[-CustomPatterns] <Object>] [-GrokPattern] <Object>
 [-Classification] <Object> [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Classifier.GrokClassifier resource property to the template.
A classifier that uses grok patterns.

## PARAMETERS

### -CustomPatterns
Optional custom grok patterns defined by this classifier.
For more information, see custom patterns in Writing Custom Classifiers: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-custompatterns
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

### -GrokPattern
The grok pattern applied to a data store by this classifier.
For more information, see built-in patterns in Writing Custom Classifiers: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-grokpattern
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

### -Classification
An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, and so on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-classification
PrimitiveType: String
UpdateType: Mutable

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

### -Name
The name of the classifier.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-name
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.Glue.Classifier.GrokClassifier
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html)

