# Add-VSLambdaFunctionCode

## SYNOPSIS
Adds an AWS::Lambda::Function.Code resource property to the template.
The deployment package for a Lambda function.
For all runtimes, you can specify the location of an object in Amazon S3.
For Node.js and Python functions, you can specify the function code inline in the template.

## SYNTAX

```
Add-VSLambdaFunctionCode [[-S3Bucket] <Object>] [[-S3Key] <Object>] [[-S3ObjectVersion] <Object>]
 [[-ZipFile] <Object>] [[-ZipFilePath] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::Function.Code resource property to the template.
The deployment package for a Lambda function.
For all runtimes, you can specify the location of an object in Amazon S3.
For Node.js and Python functions, you can specify the function code inline in the template.

Changes to a deployment package in Amazon S3 are not detected automatically during stack updates.
To update the function code, change the object key or version in the template.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -S3Bucket
An Amazon S3 bucket in the same AWS Region as your function.
The bucket can be in a different AWS account.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3bucket
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

### -S3Key
The Amazon S3 key of the deployment package.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3key
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

### -S3ObjectVersion
For versioned objects, the version of the deployment package object to use.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3objectversion
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

### -ZipFile
Node.js and Python The source code of your Lambda function.
If you include your function source inline with this parameter, AWS CloudFormation places it in a file named index and zips it to create a deployment package: https://docs.aws.amazon.com/lambda/latest/dg/deployment-package-v2.html.
For the Handler property, the first part of the handler identifier must be index.
For example, index.handler.
Your source code can contain up to 4096 characters.
For JSON, you must escape quotes and special characters such as newline n with a backslash.
If you specify a function that interacts with an AWS CloudFormation custom resource, you don't have to write your own functions to send responses to the custom resource that invoked the function.
AWS CloudFormation provides a response module cfn-module that simplifies sending responses.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile
PrimitiveType: String
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

### -ZipFilePath
{{ Fill ZipFilePath Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Lambda.Function.Code
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html)

