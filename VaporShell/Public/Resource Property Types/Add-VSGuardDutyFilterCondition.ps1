function Add-VSGuardDutyFilterCondition {
    <#
    .SYNOPSIS
        Adds an AWS::GuardDuty::Filter.Condition resource property to the template

    .DESCRIPTION
        Adds an AWS::GuardDuty::Filter.Condition resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html

    .PARAMETER Lt
        Represents the less than condition to apply to a single field when querying for findings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-lt
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Gte
        Represents the greater than or equal condition to apply to a single field when querying for findings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-gte
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Neq
        Represents the not equal condition to apply to a single field when querying for findings.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-neq
        UpdateType: Mutable

    .PARAMETER Eq
        Represents the equal condition to apply to a single field when querying for findings.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-eq
        UpdateType: Mutable

    .PARAMETER Lte
        Represents the less than or equal condition to apply to a single field when querying for findings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-lte
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GuardDuty.Filter.Condition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $Lt,
        [parameter(Mandatory = $false)]
        [Int]
        $Gte,
        [parameter(Mandatory = $false)]
        $Neq,
        [parameter(Mandatory = $false)]
        $Eq,
        [parameter(Mandatory = $false)]
        [Int]
        $Lte
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GuardDuty.Filter.Condition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
