# Add-VSAppSyncDataSourceLambdaConfig

## SYNOPSIS
Adds an AWS::AppSync::DataSource.LambdaConfig resource property to the template.
The LambdaConfig property type specifies the Lambda function ARN for an AWS AppSync data source.

## SYNTAX

```
Add-VSAppSyncDataSourceLambdaConfig [-LambdaFunctionArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::DataSource.LambdaConfig resource property to the template.
The LambdaConfig property type specifies the Lambda function ARN for an AWS AppSync data source.

LambdaConfig is a property of the AWS::AppSync::DataSource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html property type.

## PARAMETERS

### -LambdaFunctionArn
The ARN for the Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html#cfn-appsync-datasource-lambdaconfig-lambdafunctionarn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppSync.DataSource.LambdaConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html)

