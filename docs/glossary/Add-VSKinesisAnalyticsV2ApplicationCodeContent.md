# Add-VSKinesisAnalyticsV2ApplicationCodeContent

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.CodeContent resource property to the template.
Specifies either the application code, or the location of the application code, for a Java-based Amazon Kinesis Data Analytics application.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationCodeContent [[-ZipFileContent] <Object>] [[-S3ContentLocation] <Object>]
 [[-TextContent] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.CodeContent resource property to the template.
Specifies either the application code, or the location of the application code, for a Java-based Amazon Kinesis Data Analytics application.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ZipFileContent
The zip-format code for a Java-based Kinesis Data Analytics application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-zipfilecontent
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

### -S3ContentLocation
Information about the Amazon S3 bucket containing the application code.

Type: S3ContentLocation
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-s3contentlocation
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

### -TextContent
The text-format code for a Java-based Kinesis Data Analytics application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-textcontent
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalyticsV2.Application.CodeContent
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html)

