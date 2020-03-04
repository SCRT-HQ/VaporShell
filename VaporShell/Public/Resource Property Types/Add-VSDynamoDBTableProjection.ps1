function Add-VSDynamoDBTableProjection {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::Table.Projection resource property to the template. Represents attributes that are copied (projected from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.

    .DESCRIPTION
        Adds an AWS::DynamoDB::Table.Projection resource property to the template.
Represents attributes that are copied (projected from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html

    .PARAMETER NonKeyAttributes
        Represents the non-key attribute names which will be projected into the index.
For local secondary indexes, the total count of NonKeyAttributes summed across all of the local secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-nonkeyatt
        DuplicatesAllowed: True
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER ProjectionType
        The set of attributes that are projected into the index:
+  KEYS_ONLY - Only the index and primary keys are projected into the index.
+  INCLUDE - Only the specified table attributes are projected into the index. The list of projected attributes is in NonKeyAttributes.
+  ALL - All of the table attributes are projected into the index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-projtype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.Table.Projection')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NonKeyAttributes,
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
        $ProjectionType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.Table.Projection'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
