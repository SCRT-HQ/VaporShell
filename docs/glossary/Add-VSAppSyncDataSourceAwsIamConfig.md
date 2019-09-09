# Add-VSAppSyncDataSourceAwsIamConfig

## SYNOPSIS
Adds an AWS::AppSync::DataSource.AwsIamConfig resource property to the template.
Use the AwsIamConfig property type to specify AwsIamConfig for a AWS AppSync authorizaton.

## SYNTAX

```
Add-VSAppSyncDataSourceAwsIamConfig [[-SigningRegion] <Object>] [[-SigningServiceName] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::DataSource.AwsIamConfig resource property to the template.
Use the AwsIamConfig property type to specify AwsIamConfig for a AWS AppSync authorizaton.

AwsIamConfig is a property of the AWS AppSync DataSource AuthorizationConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig-authorizationconfig.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SigningRegion
The signing region for AWS IAM authorization.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingregion
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

### -SigningServiceName
The signing service name for AWS IAM authorization.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingservicename
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppSync.DataSource.AwsIamConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html)

