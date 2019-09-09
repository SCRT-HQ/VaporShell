# Add-VSAppSyncDataSourceAuthorizationConfig

## SYNOPSIS
Adds an AWS::AppSync::DataSource.AuthorizationConfig resource property to the template.
The AuthorizationConfig property type specifies the authorization type and configuration for an AWS AppSync http data source.

## SYNTAX

```
Add-VSAppSyncDataSourceAuthorizationConfig [[-AwsIamConfig] <Object>] [-AuthorizationType] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::DataSource.AuthorizationConfig resource property to the template.
The AuthorizationConfig property type specifies the authorization type and configuration for an AWS AppSync http data source.

AuthorizationConfig is a property of the AWS AppSync DataSource HttpConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AwsIamConfig
The AWS IAM settings.

Type: AwsIamConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-awsiamconfig
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

### -AuthorizationType
The authorization type required by the HTTP endpoint.
+  **AWS_IAM**: The authorization type is Sigv4.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-authorizationtype
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

### Vaporshell.Resource.AppSync.DataSource.AuthorizationConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html)

