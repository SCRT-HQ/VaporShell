function New-VSDynamoDBTable {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::Table resource to the template. The AWS::DynamoDB::Table resource creates a DynamoDB table. For more information, see CreateTable: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_CreateTable.html in the *Amazon DynamoDB API Reference*.

    .DESCRIPTION
        Adds an AWS::DynamoDB::Table resource to the template. The AWS::DynamoDB::Table resource creates a DynamoDB table. For more information, see CreateTable: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_CreateTable.html in the *Amazon DynamoDB API Reference*.

You should be aware of the following behaviors when working with DynamoDB tables:

+ AWS CloudFormation typically creates DynamoDB tables in parallel. However, if your template includes multiple DynamoDB tables with indexes, you must declare dependencies so that the tables are created sequentially. Amazon DynamoDB limits the number of tables with secondary indexes that are in the creating state. If you create multiple tables with indexes at the same time, DynamoDB returns an error and the stack operation fails. For an example, see DynamoDB Table with a DependsOn Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-examples-dependson.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER AttributeDefinitions
        A list of attributes that describe the key schema for the table and indexes. Duplicates are allowed.
Update requires: Some interruptions: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-some-interrupt. Replacement if you edit an existing AttributeDefinition.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-attributedef
        DuplicatesAllowed: True
        ItemType: AttributeDefinition
        Type: List
        UpdateType: Conditional

    .PARAMETER BillingMode
        Specify how you are charged for read and write throughput and how you manage capacity.
Valid values include:
+  PROVISIONED - Sets the billing mode to PROVISIONED. We recommend using PROVISIONED for predictable workloads.
+  PAY_PER_REQUEST - Sets the billing mode to PAY_PER_REQUEST. We recommend using PAY_PER_REQUEST for unpredictable workloads.
If not specified, the default is PROVISIONED.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-billingmode
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER GlobalSecondaryIndexes
        Global secondary indexes to be created on the table. You can create up to 20 global secondary indexes.
If you update a table to include a new global secondary index, AWS CloudFormation initiates the index creation and then proceeds with the stack update. AWS CloudFormation doesn't wait for the index to complete creation because the backfilling phase can take a long time, depending on the size of the table. You can't use the index or update the table until the index's status is ACTIVE. You can track its status by using the DynamoDB DescribeTable: https://docs.aws.amazon.com/cli/latest/reference/dynamodb/describe-table.html command.
If you add or delete an index during an update, we recommend that you don't update any other resources. If your stack fails to update and is rolled back while adding a new index, you must manually delete the index.
Updates are not supported. The following are exceptions:
+ If you update only the provisioned throughput values of global secondary indexes, you can update the table without interruption.
+ You can delete or add one global secondary index without interruption. If you do both in the same update for example, by changing the index's logical ID, the update fails.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-gsi
        DuplicatesAllowed: True
        ItemType: GlobalSecondaryIndex
        Type: List
        UpdateType: Mutable

    .PARAMETER KeySchema
        Specifies the attributes that make up the primary key for the table. The attributes in the KeySchema property must also be defined in the AttributeDefinitions property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-keyschema
        DuplicatesAllowed: False
        ItemType: KeySchema
        Type: List
        UpdateType: Immutable

    .PARAMETER LocalSecondaryIndexes
        Local secondary indexes to be created on the table. You can create up to 5 local secondary indexes. Each index is scoped to a given hash key value. The size of each hash key can be up to 10 gigabytes.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-lsi
        DuplicatesAllowed: True
        ItemType: LocalSecondaryIndex
        Type: List
        UpdateType: Immutable

    .PARAMETER PointInTimeRecoverySpecification
        The settings used to enable point in time recover.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-pointintimerecoveryspecification
        Type: PointInTimeRecoverySpecification
        UpdateType: Mutable

    .PARAMETER ProvisionedThroughput
        Throughput for the specified table, which consists of values for ReadCapacityUnits and WriteCapacityUnits. For more information about the contents of a provisioned throughput structure, see Amazon DynamoDB Table ProvisionedThroughput: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html.
If you set BillingMode as PROVISIONED, you must specify this property. If you set BillingMode as PAY_PER_REQUEST, you cannot specify this property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-provisionedthroughput
        Type: ProvisionedThroughput
        UpdateType: Mutable

    .PARAMETER SSESpecification
        Specifies the settings to enable server-side encryption.
Update requires: Some interruptions: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-some-interrupt.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-ssespecification
        Type: SSESpecification
        UpdateType: Conditional

    .PARAMETER StreamSpecification
        The settings for the DynamoDB table stream, which capture changes to items stored in the table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-streamspecification
        Type: StreamSpecification
        UpdateType: Mutable

    .PARAMETER TableName
        A name for the table. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the table name. For more information, see Name Type: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html.
If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-tablename
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Tags
        An array of key-value pairs to apply to this resource.
For more information, see Tag: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-tags
        DuplicatesAllowed: True
        ItemType: Tag
        Type: List
        UpdateType: Mutable

    .PARAMETER TimeToLiveSpecification
        Specifies the Time to Live TTL settings for the table.
For detailed information about the limits in DynamoDB, see Limits in Amazon DynamoDB: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html in the Amazon DynamoDB Developer Guide.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-timetolivespecification
        Type: TimeToLiveSpecification
        UpdateType: Mutable

    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"


    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.


    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.


    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.Table')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DynamoDB.Table.AttributeDefinition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AttributeDefinitions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BillingMode,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DynamoDB.Table.GlobalSecondaryIndex"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $GlobalSecondaryIndexes,
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
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DynamoDB.Table.LocalSecondaryIndex"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LocalSecondaryIndexes,
        [parameter(Mandatory = $false)]
        $PointInTimeRecoverySpecification,
        [parameter(Mandatory = $false)]
        $ProvisionedThroughput,
        [parameter(Mandatory = $false)]
        $SSESpecification,
        [parameter(Mandatory = $false)]
        $StreamSpecification,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TableName,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Tag","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tags,
        [parameter(Mandatory = $false)]
        $TimeToLiveSpecification,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $DeletionPolicy,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $DependsOn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "The UpdatePolicy parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Metadata,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UpdatePolicy,
        [parameter(Mandatory = $false)]
        $Condition
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::DynamoDB::Table"
        }
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                LogicalId {}
                DeletionPolicy {
                    $ResourceParams.Add("DeletionPolicy",$DeletionPolicy)
                }
                DependsOn {
                    $ResourceParams.Add("DependsOn",$DependsOn)
                }
                Metadata {
                    $ResourceParams.Add("Metadata",$Metadata)
                }
                UpdatePolicy {
                    $ResourceParams.Add("UpdatePolicy",$UpdatePolicy)
                }
                Condition {
                    $ResourceParams.Add("Condition",$Condition)
                }
                AttributeDefinitions {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name AttributeDefinitions -Value @($AttributeDefinitions)
                }
                GlobalSecondaryIndexes {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name GlobalSecondaryIndexes -Value @($GlobalSecondaryIndexes)
                }
                KeySchema {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name KeySchema -Value @($KeySchema)
                }
                LocalSecondaryIndexes {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name LocalSecondaryIndexes -Value @($LocalSecondaryIndexes)
                }
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
                }
                Default {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters[$key]
                }
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.Table'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
