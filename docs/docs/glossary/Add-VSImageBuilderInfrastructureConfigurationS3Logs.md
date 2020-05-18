# Add-VSImageBuilderInfrastructureConfigurationS3Logs

## SYNOPSIS
Adds an AWS::ImageBuilder::InfrastructureConfiguration.S3Logs resource property to the template.
Amazon S3 logging configuration.

## SYNTAX

```
Add-VSImageBuilderInfrastructureConfigurationS3Logs [[-S3BucketName] <Object>] [[-S3KeyPrefix] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ImageBuilder::InfrastructureConfiguration.S3Logs resource property to the template.
Amazon S3 logging configuration.

## PARAMETERS

### -S3BucketName
The Amazon S3 bucket in which to store the logs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html#cfn-imagebuilder-infrastructureconfiguration-s3logs-s3bucketname
UpdateType: Mutable
PrimitiveType: String

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

### -S3KeyPrefix
The Amazon S3 path in which to store the logs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html#cfn-imagebuilder-infrastructureconfiguration-s3logs-s3keyprefix
UpdateType: Mutable
PrimitiveType: String

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

### Vaporshell.Resource.ImageBuilder.InfrastructureConfiguration.S3Logs
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html)

