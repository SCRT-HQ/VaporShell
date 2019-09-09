# Add-VSGluePartitionSerdeInfo

## SYNOPSIS
Adds an AWS::Glue::Partition.SerdeInfo resource property to the template.
Information about a serialization/deserialization program (SerDe that serves as an extractor and loader.

## SYNTAX

```
Add-VSGluePartitionSerdeInfo [[-Parameters] <Object>] [[-SerializationLibrary] <Object>] [[-Name] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Partition.SerdeInfo resource property to the template.
Information about a serialization/deserialization program (SerDe that serves as an extractor and loader.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Parameters
These key-value pairs define initialization parameters for the SerDe.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-parameters
PrimitiveType: Json
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

### -SerializationLibrary
Usually the class that implements the SerDe.
An example is org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-serializationlibrary
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

### -Name
Name of the SerDe.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-name
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

### Vaporshell.Resource.Glue.Partition.SerdeInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html)

