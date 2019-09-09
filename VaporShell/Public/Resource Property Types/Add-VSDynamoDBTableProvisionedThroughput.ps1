function Add-VSDynamoDBTableProvisionedThroughput {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template. Throughput for the specified table, which consists of values for ReadCapacityUnits and WriteCapacityUnits. For more information about the contents of a provisioned throughput structure, see Amazon DynamoDB Table ProvisionedThroughput: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html.

    .DESCRIPTION
        Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template.
Throughput for the specified table, which consists of values for ReadCapacityUnits and WriteCapacityUnits. For more information about the contents of a provisioned throughput structure, see Amazon DynamoDB Table ProvisionedThroughput: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html

    .PARAMETER ReadCapacityUnits
        The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ThrottlingException. For more information, see Specifying Read and Write Requirements: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput in the *Amazon DynamoDB Developer Guide*.
If read/write capacity mode is PAY_PER_REQUEST the value is set to 0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-readcapacityunits
        PrimitiveType: Long
        UpdateType: Mutable

    .PARAMETER WriteCapacityUnits
        The maximum number of writes consumed per second before DynamoDB returns a ThrottlingException. For more information, see Specifying Read and Write Requirements: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput in the *Amazon DynamoDB Developer Guide*.
If read/write capacity mode is PAY_PER_REQUEST the value is set to 0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-writecapacityunits
        PrimitiveType: Long
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.Table.ProvisionedThroughput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ReadCapacityUnits,
        [parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.Table.ProvisionedThroughput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
