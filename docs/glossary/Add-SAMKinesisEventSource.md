# Add-SAMKinesisEventSource

## SYNOPSIS
Adds a Kinesis Event Source to a Serverless Application Model resource

## SYNTAX

```
Add-SAMKinesisEventSource [-LogicalId] <String> -Stream <Object> -StartingPosition <String>
 [-BatchSize <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The object describing an event source with type Kinesis.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Stream
Required.
ARN of the Amazon Kinesis stream.
Use either a string or an intrinsic function.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartingPosition
Required.
One of TRIM_HORIZON or LATEST.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BatchSize
Maximum number of stream records to process per function invocation.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.EventSource.Kinesis
## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#kinesis](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#kinesis)

