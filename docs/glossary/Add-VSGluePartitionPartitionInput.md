# Add-VSGluePartitionPartitionInput

## SYNOPSIS
Adds an AWS::Glue::Partition.PartitionInput resource property to the template.
The structure used to create and update a partition.

## SYNTAX

```
Add-VSGluePartitionPartitionInput [[-Parameters] <Object>] [[-StorageDescriptor] <Object>] [-Values] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Partition.PartitionInput resource property to the template.
The structure used to create and update a partition.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Parameters
These key-value pairs define partition parameters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-parameters
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

### -StorageDescriptor
Provides information about the physical location where the partition is stored.

Type: StorageDescriptor
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-storagedescriptor
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

### -Values
The values of the partition.
Although this parameter is not required by the SDK, you must specify this parameter for a valid input.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-values
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.Partition.PartitionInput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html)

