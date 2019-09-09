# Add-VSEMRStepHadoopJarStepConfig

## SYNOPSIS
Adds an AWS::EMR::Step.HadoopJarStepConfig resource property to the template.
A job flow step consisting of a JAR file whose main function will be executed.
The main function submits a job for Hadoop to execute and waits for the job to finish or fail.

## SYNTAX

```
Add-VSEMRStepHadoopJarStepConfig [[-Args] <Object>] [-Jar] <Object> [[-MainClass] <Object>]
 [[-StepProperties] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Step.HadoopJarStepConfig resource property to the template.
A job flow step consisting of a JAR file whose main function will be executed.
The main function submits a job for Hadoop to execute and waits for the job to finish or fail.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Args
A list of command line arguments passed to the JAR file's main function when executed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-args
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Jar
A path to a JAR file run during the step.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-jar
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

### -MainClass
The name of the main class in the specified Java file.
If not specified, the JAR file should specify a Main-Class in its manifest file.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-mainclass
PrimitiveType: String
UpdateType: Immutable

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

### -StepProperties
A list of Java properties that are set when the step runs.
You can use these properties to pass key value pairs to your main function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-stepproperties
DuplicatesAllowed: False
ItemType: KeyValue
Type: List
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

### Vaporshell.Resource.EMR.Step.HadoopJarStepConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html)

