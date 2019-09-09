# Add-VSElasticsearchDomainVPCOptions

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.VPCOptions resource property to the template.
The virtual private cloud (VPC configuration for the Amazon ES domain.
For more information, see VPC Support for Amazon Elasticsearch Service Domains: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html in the *Amazon Elasticsearch Service Developer Guide*.

## SYNTAX

```
Add-VSElasticsearchDomainVPCOptions [[-SecurityGroupIds] <Object>] [[-SubnetIds] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.VPCOptions resource property to the template.
The virtual private cloud (VPC configuration for the Amazon ES domain.
For more information, see VPC Support for Amazon Elasticsearch Service Domains: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html in the *Amazon Elasticsearch Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SecurityGroupIds
The list of security group IDs that are associated with the VPC endpoints for the domain.
If you don't provide a security group ID, Amazon ES uses the default security group for the VPC.
To learn more, see Security Groups for your VPC : https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.htmlin the *Amazon VPC User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-securitygroupids
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -SubnetIds
A list of subnet IDs that are associated with the VPC endpoints for the domain.
If your domain has zone awareness enabled, you need to provide two subnet IDs, one per zone.
Otherwise, provide only one.
To learn more, see VPCs and Subnets: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html in the *Amazon VPC User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-subnetids
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.Elasticsearch.Domain.VPCOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html)

