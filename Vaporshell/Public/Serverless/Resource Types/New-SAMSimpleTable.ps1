function New-SAMSimpleTable {
    <#
    .SYNOPSIS
        Adds an AWS::Serverless::SimpleTable resource to the template

    .DESCRIPTION
        The AWS::Serverless::SimpleTable resource creates a DynamoDB table with a single attribute primary key. It is useful when data only needs to be accessed via a primary key. To use the more advanced functionality of DynamoDB, use an AWS::DynamoDB::Table resource instead.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER PrimaryKey
        Attribute name and type to be used as the table's primary key. This cannot be modified without replacing the resource. Defaults to String attribute named ID.

    .PARAMETER ProvisionedThroughput
		Read and write throughput provisioning information. Defaults to 5 read and 5 write capacity units per second.

        Use this 'Add-VSDynamoDBTableProvisionedThroughput' function for this value.

    .NOTES
        Return values

        Ref
        When the logical ID of this resource is provided to the Ref intrinsic function, it returns the resource name of the underlying DynamoDB table.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.SimpleTable')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    throw 'The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $PrimaryKey = (@{Name = "id"; Type="String"}),
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DynamoDB.Table.ProvisionedThroughput"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $ProvisionedThroughput
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::Serverless::SimpleTable"
        }
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                'LogicalId' {}
                Default {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $val = $((Get-Variable $key).Value)
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $val
                }
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.SimpleTable'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}