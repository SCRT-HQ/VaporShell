# Add-VSGlueConnectionConnectionInput

## SYNOPSIS
Adds an AWS::Glue::Connection.ConnectionInput resource property to the template.
A structure that is used to specify a connection to create or update.

## SYNTAX

```
Add-VSGlueConnectionConnectionInput [[-Description] <Object>] [-ConnectionType] <Object>
 [[-MatchCriteria] <Object>] [[-PhysicalConnectionRequirements] <Object>] [-ConnectionProperties] <Object>
 [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Connection.ConnectionInput resource property to the template.
A structure that is used to specify a connection to create or update.

## PARAMETERS

### -Description
The description of the connection.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-description
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

### -ConnectionType
The type of the connection.
Currently, only JDBC is supported; SFTP is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectiontype
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

### -MatchCriteria
A list of criteria that can be used in selecting this connection.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-matchcriteria
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

### -PhysicalConnectionRequirements
A map of physical connection requirements, such as virtual private cloud VPC and SecurityGroup, that are needed to successfully make this connection.

Type: PhysicalConnectionRequirements
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-physicalconnectionrequirements
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

### -ConnectionProperties
These key-value pairs define parameters for the connection.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectionproperties
PrimitiveType: Json
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the connection.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-name
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.Connection.ConnectionInput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html)

