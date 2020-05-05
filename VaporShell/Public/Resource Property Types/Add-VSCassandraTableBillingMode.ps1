function Add-VSCassandraTableBillingMode {
    <#
    .SYNOPSIS
        Adds an AWS::Cassandra::Table.BillingMode resource property to the template. Determines the billing mode for the table - on-demand or provisioned.

    .DESCRIPTION
        Adds an AWS::Cassandra::Table.BillingMode resource property to the template.
Determines the billing mode for the table - on-demand or provisioned.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html

    .PARAMETER Mode
        The billing mode for the table:
+ On-demand mode - ON_DEMAND
+ Provisioned mode - PROVISIONED
**Note**
If you choose PROVISIONED mode, then you'll also need to specify provisioned throughput read and write capacity for the table.
Valid Values: ON_DEMAND | PROVISIONED

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-mode
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ProvisionedThroughput
        The provisioned read capacity and write capacity for the table. For more information, see Provisioned Throughput Capacity Mode: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html#ReadWriteCapacityMode.Provisioned in the *Amazon Keyspaces Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-provisionedthroughput
        UpdateType: Mutable
        Type: ProvisionedThroughput

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cassandra.Table.BillingMode')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Mode,
        [parameter(Mandatory = $false)]
        $ProvisionedThroughput
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cassandra.Table.BillingMode'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
