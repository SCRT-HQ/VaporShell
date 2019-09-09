# Add-VSRDSDBClusterScalingConfiguration

## SYNOPSIS
Adds an AWS::RDS::DBCluster.ScalingConfiguration resource property to the template.
The ScalingConfiguration property type specifies the scaling configuration of an Aurora Serverless DB cluster.

## SYNTAX

```
Add-VSRDSDBClusterScalingConfiguration [[-AutoPause] <Boolean>] [[-MaxCapacity] <Int32>]
 [[-MinCapacity] <Int32>] [[-SecondsUntilAutoPause] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::RDS::DBCluster.ScalingConfiguration resource property to the template.
The ScalingConfiguration property type specifies the scaling configuration of an Aurora Serverless DB cluster.

For more information, see Using Amazon Aurora Serverless: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html in the *Amazon Aurora User Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AutoPause
A value that indicates whether to allow or disallow automatic pause for an Aurora DB cluster in serverless DB engine mode.
A DB cluster can be paused only when it's idle it has no connections.
If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot.
In this case, the DB cluster is restored when there is a request to connect to it.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-autopause
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxCapacity
The maximum capacity for an Aurora DB cluster in serverless DB engine mode.
Valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.
The maximum capacity must be greater than or equal to the minimum capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-maxcapacity
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinCapacity
The minimum capacity for an Aurora DB cluster in serverless DB engine mode.
Valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.
The minimum capacity must be less than or equal to the maximum capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-mincapacity
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecondsUntilAutoPause
The time, in seconds, before an Aurora DB cluster in serverless mode is paused.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-secondsuntilautopause
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.RDS.DBCluster.ScalingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html)

