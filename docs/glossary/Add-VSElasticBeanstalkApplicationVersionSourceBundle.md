# Add-VSElasticBeanstalkApplicationVersionSourceBundle

## SYNOPSIS
Adds an AWS::ElasticBeanstalk::ApplicationVersion.SourceBundle resource property to the template.
The SourceBundle property is an embedded property of the AWS::ElasticBeanstalk::ApplicationVersion: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html resource.
It specifies the Amazon S3 location of the source bundle for an AWS Elastic Beanstalk application version.

## SYNTAX

```
Add-VSElasticBeanstalkApplicationVersionSourceBundle [-S3Bucket] <Object> [-S3Key] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticBeanstalk::ApplicationVersion.SourceBundle resource property to the template.
The SourceBundle property is an embedded property of the AWS::ElasticBeanstalk::ApplicationVersion: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html resource.
It specifies the Amazon S3 location of the source bundle for an AWS Elastic Beanstalk application version.

## PARAMETERS

### -S3Bucket
The Amazon S3 bucket where the data is located.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3bucket
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

### -S3Key
The Amazon S3 key where the data is located.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3key
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

### Vaporshell.Resource.ElasticBeanstalk.ApplicationVersion.SourceBundle
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html)

