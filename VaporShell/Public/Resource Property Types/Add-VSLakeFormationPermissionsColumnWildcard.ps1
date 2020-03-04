function Add-VSLakeFormationPermissionsColumnWildcard {
    <#
    .SYNOPSIS
        Adds an AWS::LakeFormation::Permissions.ColumnWildcard resource property to the template. A wildcard object, consisting of an optional list of excluded column names or indexes.

    .DESCRIPTION
        Adds an AWS::LakeFormation::Permissions.ColumnWildcard resource property to the template.
A wildcard object, consisting of an optional list of excluded column names or indexes.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-columnwildcard.html

    .PARAMETER ExcludedColumnNames
        Excludes column names. Any column with this name will be excluded.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-columnwildcard.html#cfn-lakeformation-permissions-columnwildcard-excludedcolumnnames
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LakeFormation.Permissions.ColumnWildcard')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ExcludedColumnNames
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LakeFormation.Permissions.ColumnWildcard'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
