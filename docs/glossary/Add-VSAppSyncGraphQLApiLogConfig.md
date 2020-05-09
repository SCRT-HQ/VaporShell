# Add-VSAppSyncGraphQLApiLogConfig

## SYNOPSIS
Adds an AWS::AppSync::GraphQLApi.LogConfig resource property to the template.
The LogConfig property type specifies the logging configuration when writing GraphQL operations and tracing to Amazon CloudWatch for a AWS AppSync GraphQL API.

## SYNTAX

```
Add-VSAppSyncGraphQLApiLogConfig [[-CloudWatchLogsRoleArn] <Object>] [[-ExcludeVerboseContent] <Object>]
 [[-FieldLogLevel] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::GraphQLApi.LogConfig resource property to the template.
The LogConfig property type specifies the logging configuration when writing GraphQL operations and tracing to Amazon CloudWatch for a AWS AppSync GraphQL API.

LogConfig is a property of the AWS::AppSync::GraphQLApi: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html property type.

## PARAMETERS

### -CloudWatchLogsRoleArn
The service role that AWS AppSync will assume to publish to Amazon CloudWatch Logs in your account.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html#cfn-appsync-graphqlapi-logconfig-cloudwatchlogsrolearn
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

### -ExcludeVerboseContent
Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html#cfn-appsync-graphqlapi-logconfig-excludeverbosecontent
PrimitiveType: Boolean
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

### -FieldLogLevel
The field logging level.
Values can be NONE, ERROR, or ALL.
+  **NONE**: No field-level logs are captured.
+  **ERROR**: Logs the following information only for the fields that are in error:
+ The error section in the server response.
+ Field-level errors.
+ The generated request/response functions that got resolved for error fields.
+  **ALL**: The following information is logged for all fields in the query:
+ Field-level tracing information.
+ The generated request/response functions that got resolved for each field.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html#cfn-appsync-graphqlapi-logconfig-fieldloglevel
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

### Vaporshell.Resource.AppSync.GraphQLApi.LogConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html)

