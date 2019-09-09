# Add-VSAppSyncDataSourceRelationalDatabaseConfig

## SYNOPSIS
Adds an AWS::AppSync::DataSource.RelationalDatabaseConfig resource property to the template.
Use the RelationalDatabaseConfig property type to specify RelationalDatabaseConfig for an AWS AppSync data source.

## SYNTAX

```
Add-VSAppSyncDataSourceRelationalDatabaseConfig [[-RdsHttpEndpointConfig] <Object>]
 [-RelationalDatabaseSourceType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::DataSource.RelationalDatabaseConfig resource property to the template.
Use the RelationalDatabaseConfig property type to specify RelationalDatabaseConfig for an AWS AppSync data source.

RelationalDatabaseConfig is a property of the AWS::AppSync::DataSource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RdsHttpEndpointConfig
Information about the Amazon RDS resource.

Type: RdsHttpEndpointConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-rdshttpendpointconfig
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

### -RelationalDatabaseSourceType
The type of relational data source.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-relationaldatabasesourcetype
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

### Vaporshell.Resource.AppSync.DataSource.RelationalDatabaseConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html)

