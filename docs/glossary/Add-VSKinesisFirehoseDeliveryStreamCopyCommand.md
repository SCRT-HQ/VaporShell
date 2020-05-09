# Add-VSKinesisFirehoseDeliveryStreamCopyCommand

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.CopyCommand resource property to the template.
The CopyCommand property type configures the Amazon Redshift COPY command that Amazon Kinesis Data Firehose (Kinesis Data Firehose uses to load data into an Amazon Redshift cluster from an Amazon S3 bucket.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamCopyCommand [[-CopyOptions] <Object>] [[-DataTableColumns] <Object>]
 [-DataTableName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.CopyCommand resource property to the template.
The CopyCommand property type configures the Amazon Redshift COPY command that Amazon Kinesis Data Firehose (Kinesis Data Firehose uses to load data into an Amazon Redshift cluster from an Amazon S3 bucket.

## PARAMETERS

### -CopyOptions
Parameters to use with the Amazon Redshift COPY command.
For examples, see the CopyOptions content for the CopyCommand: https://docs.aws.amazon.com/firehose/latest/APIReference/API_CopyCommand.html data type in the *Amazon Kinesis Data Firehose API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-copyoptions
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

### -DataTableColumns
A comma-separated list of column names.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablecolumns
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

### -DataTableName
The name of the target table.
The table must already exist in the database.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablename
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.CopyCommand
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html)

