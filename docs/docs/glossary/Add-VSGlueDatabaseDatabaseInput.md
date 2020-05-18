# Add-VSGlueDatabaseDatabaseInput

## SYNOPSIS
Adds an AWS::Glue::Database.DatabaseInput resource property to the template.
The structure used to create or update a database.

## SYNTAX

```
Add-VSGlueDatabaseDatabaseInput [[-LocationUri] <Object>] [[-Description] <Object>] [[-Parameters] <Object>]
 [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Database.DatabaseInput resource property to the template.
The structure used to create or update a database.

## PARAMETERS

### -LocationUri
The location of the database for example, an HDFS path.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-locationuri
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

### -Description
A description of the database.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-description
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

### -Parameters
These key-value pairs define parameters and properties of the database.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-parameters
PrimitiveType: Json
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

### -Name
The name of the database.
For Hive compatibility, this is folded to lowercase when it is stored.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-name
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.Database.DatabaseInput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html)

