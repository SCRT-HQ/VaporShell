# Add-VSRedshiftClusterLoggingProperties

## SYNOPSIS
Adds an AWS::Redshift::Cluster.LoggingProperties resource property to the template.
Specifies logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

## SYNTAX

```
Add-VSRedshiftClusterLoggingProperties [-BucketName] <Object> [[-S3KeyPrefix] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Redshift::Cluster.LoggingProperties resource property to the template.
Specifies logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

## PARAMETERS

### -BucketName
The name of an existing S3 bucket where the log files are to be stored.
Constraints:
+ Must be in the same region as the cluster
+ The cluster must have read bucket and put object permissions

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-bucketname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3KeyPrefix
The prefix applied to the log file names.
Constraints:
+ Cannot exceed 512 characters
+ Cannot contain spaces , double quotes ", single quotes ', a backslash , or control characters.
The hexadecimal codes for invalid characters are:
+ x00 to x20
+ x22
+ x27
+ x5c
+ x7f or larger

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-s3keyprefix
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

### Vaporshell.Resource.Redshift.Cluster.LoggingProperties
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html)

