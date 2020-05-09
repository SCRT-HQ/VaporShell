# Add-VSMSKClusterEBSStorageInfo

## SYNOPSIS
Adds an AWS::MSK::Cluster.EBSStorageInfo resource property to the template.
Contains information about the EBS storage volumes attached to brokers.

## SYNTAX

```
Add-VSMSKClusterEBSStorageInfo [[-VolumeSize] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.EBSStorageInfo resource property to the template.
Contains information about the EBS storage volumes attached to brokers.

## PARAMETERS

### -VolumeSize
The size in GiB of the EBS volume for the data drive on each broker node.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html#cfn-msk-cluster-ebsstorageinfo-volumesize
PrimitiveType: Integer
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MSK.Cluster.EBSStorageInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html)

