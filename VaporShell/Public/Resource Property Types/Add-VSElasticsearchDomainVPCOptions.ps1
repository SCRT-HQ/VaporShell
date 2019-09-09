function Add-VSElasticsearchDomainVPCOptions {
    <#
    .SYNOPSIS
        Adds an AWS::Elasticsearch::Domain.VPCOptions resource property to the template. The virtual private cloud (VPC configuration for the Amazon ES domain. For more information, see VPC Support for Amazon Elasticsearch Service Domains: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html in the *Amazon Elasticsearch Service Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Elasticsearch::Domain.VPCOptions resource property to the template.
The virtual private cloud (VPC configuration for the Amazon ES domain. For more information, see VPC Support for Amazon Elasticsearch Service Domains: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html in the *Amazon Elasticsearch Service Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html

    .PARAMETER SecurityGroupIds
        The list of security group IDs that are associated with the VPC endpoints for the domain. If you don't provide a security group ID, Amazon ES uses the default security group for the VPC. To learn more, see Security Groups for your VPC : https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.htmlin the *Amazon VPC User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-securitygroupids
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER SubnetIds
        A list of subnet IDs that are associated with the VPC endpoints for the domain. If your domain has zone awareness enabled, you need to provide two subnet IDs, one per zone. Otherwise, provide only one. To learn more, see VPCs and Subnets: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html in the *Amazon VPC User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-subnetids
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Elasticsearch.Domain.VPCOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecurityGroupIds,
        [parameter(Mandatory = $false)]
        $SubnetIds
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Elasticsearch.Domain.VPCOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
