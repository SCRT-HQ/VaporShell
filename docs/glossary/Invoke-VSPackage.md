# Invoke-VSPackage

## SYNOPSIS
Packages the local artifacts (local paths) that your AWS CloudFormation template references.

## SYNTAX

### TemplateFile (Default)
```
Invoke-VSPackage [-TemplateFile] <String> [-S3Bucket] <String> [-S3Prefix <String>] [-KMSKeyId <String>]
 [-OutputTemplateFile <String>] [-UseJson] [-Force] [-ProfileName <String>] [<CommonParameters>]
```

### TemplateBody
```
Invoke-VSPackage [-TemplateBody] <String> [-S3Bucket] <String> [-S3Prefix <String>] [-KMSKeyId <String>]
 [-OutputTemplateFile <String>] [-UseJson] [-Force] [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
Packages the local artifacts (local paths) that your AWS CloudFormation template references.
The command uploads local artifacts, such as source code for an AWS Lambda function or a Swagger file for an AWS API Gateway REST API, to an S3 bucket.
The command returns a copy of your template, replacing references to local artifacts with the S3 location where the command uploaded the artifacts.

## PARAMETERS

### -TemplateBody
A JSON or YAML string containing the template body.

```yaml
Type: String
Parameter Sets: TemplateBody
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -TemplateFile
The path to the local file containing the template.

```yaml
Type: String
Parameter Sets: TemplateFile
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3Bucket
The name of the S3 bucket where this command uploads the artifacts that are referenced in your template.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3Prefix
A prefix name that the command adds to the artifacts' name when it uploads them to the S3 bucket.
The prefix name is a path name (folder name) for the S3 bucket.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KMSKeyId
The ID of an AWS KMS key that the command uses to encrypt artifacts that are at rest in the S3 bucket.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTemplateFile
The path to the file where the command writes the output AWS CloudFormation template.
If you don't specify a path, the command writes the template to the standard output.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseJson
Indicates whether to use JSON as the format for the output AWS CloudFormation template.
YAML is used by default (if cfn-flip is available).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Indicates whether to override existing files in the S3 bucket.
Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ForceUpload

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
