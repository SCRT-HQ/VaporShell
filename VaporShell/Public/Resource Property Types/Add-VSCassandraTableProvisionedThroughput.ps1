function Add-VSCassandraTableProvisionedThroughput {
    <#
    .SYNOPSIS
        Adds an AWS::Cassandra::Table.ProvisionedThroughput resource property to the template. The provisioned throughput for the table, consisting of ReadCapacityUnits and WriteCapacityUnits.

    .DESCRIPTION
        Adds an AWS::Cassandra::Table.ProvisionedThroughput resource property to the template.
The provisioned throughput for the table, consisting of ReadCapacityUnits and WriteCapacityUnits.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html

    .PARAMETER ReadCapacityUnits
        The amount of read capacity that's provisioned for the table. For more information, see Read/Write Capacity Mode: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html in the the *Amazon Keyspaces Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html#cfn-cassandra-table-provisionedthroughput-readcapacityunits
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER WriteCapacityUnits
        The amount of write capacity that's provisioned for the table. For more information, see Read/Write Capacity Mode: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html in the the *Amazon Keyspaces Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html#cfn-cassandra-table-provisionedthroughput-writecapacityunits
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cassandra.Table.ProvisionedThroughput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ReadCapacityUnits,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $WriteCapacityUnits
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cassandra.Table.ProvisionedThroughput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
