function Add-VSDynamoDBTableGlobalSecondaryIndex {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::Table.GlobalSecondaryIndex resource property to the template. Represents the properties of a global secondary index.

    .DESCRIPTION
        Adds an AWS::DynamoDB::Table.GlobalSecondaryIndex resource property to the template.
Represents the properties of a global secondary index.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html

    .PARAMETER IndexName
        The name of the global secondary index. The name must be unique among all other indexes on this table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-indexname
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER KeySchema
        The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:
+  HASH - partition key
+  RANGE - sort key
The partition key of an item is also known as its *hash attribute*. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
The sort key of an item is also known as its *range attribute*. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-keyschema
        DuplicatesAllowed: False
        ItemType: KeySchema
        Type: List
        UpdateType: Mutable

    .PARAMETER Projection
        Represents attributes that are copied projected from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-projection
        Type: Projection
        UpdateType: Mutable

    .PARAMETER ProvisionedThroughput
        Represents the provisioned throughput settings for the specified global secondary index.
For current minimum and maximum provisioned throughput values, see Limits: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html in the *Amazon DynamoDB Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-provisionedthroughput
        Type: ProvisionedThroughput
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.Table.GlobalSecondaryIndex')]
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
        $IndexName,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DynamoDB.Table.KeySchema"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KeySchema,
        [parameter(Mandatory = $true)]
        $Projection,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.Table.GlobalSecondaryIndex'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
