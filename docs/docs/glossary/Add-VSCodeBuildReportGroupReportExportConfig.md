# Add-VSCodeBuildReportGroupReportExportConfig

## SYNOPSIS
Adds an AWS::CodeBuild::ReportGroup.ReportExportConfig resource property to the template.
Information about the location where the run of a report is exported.

## SYNTAX

```
Add-VSCodeBuildReportGroupReportExportConfig [[-S3Destination] <Object>] [-ExportConfigType] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::ReportGroup.ReportExportConfig resource property to the template.
Information about the location where the run of a report is exported.

## PARAMETERS

### -S3Destination
A S3ReportExportConfig object that contains information about the S3 bucket where the run of a report is exported.

Type: S3ReportExportConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html#cfn-codebuild-reportgroup-reportexportconfig-s3destination
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

### -ExportConfigType
The export configuration type.
Valid values are:
+  S3: The report results are exported to an S3 bucket.
+  NO_EXPORT: The report results are not exported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html#cfn-codebuild-reportgroup-reportexportconfig-exportconfigtype
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

### Vaporshell.Resource.CodeBuild.ReportGroup.ReportExportConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html)

