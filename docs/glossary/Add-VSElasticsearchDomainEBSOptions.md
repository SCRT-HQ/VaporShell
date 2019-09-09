# Add-VSElasticsearchDomainEBSOptions

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.EBSOptions resource property to the template.
The configurations of Amazon Elastic Block Store (Amazon EBS volumes that are attached to data nodes in the Amazon ES domain.
For more information, see Configuring EBS-based Storage: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs in the *Amazon Elasticsearch Service Developer Guide*.

## SYNTAX

```
Add-VSElasticsearchDomainEBSOptions [[-EBSEnabled] <Boolean>] [[-Iops] <Int32>] [[-VolumeSize] <Int32>]
 [[-VolumeType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.EBSOptions resource property to the template.
The configurations of Amazon Elastic Block Store (Amazon EBS volumes that are attached to data nodes in the Amazon ES domain.
For more information, see Configuring EBS-based Storage: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs in the *Amazon Elasticsearch Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -EBSEnabled
Specifies whether Amazon EBS volumes are attached to data nodes in the Amazon ES domain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-ebsenabled
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

### -Iops
The number of I/O operations per second IOPS that the volume supports.
This property applies only to the Provisioned IOPS SSD EBS volume type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-iops
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

### -VolumeSize
The size in GiB of the EBS volume for each data node.
The minimum and maximum size of an EBS volume depends on the EBS volume type and the instance type to which it is attached.
For more information, see Configuring EBS-based Storage: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs in the *Amazon Elasticsearch Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-volumesize
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

### -VolumeType
The EBS volume type to use with the Amazon ES domain, such as standard, gp2, io1, st1, or sc1.
For more information about each type, see Amazon EBS Volume Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html in the *Amazon EC2 User Guide for Linux Instances*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-volumetype
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Elasticsearch.Domain.EBSOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html)

