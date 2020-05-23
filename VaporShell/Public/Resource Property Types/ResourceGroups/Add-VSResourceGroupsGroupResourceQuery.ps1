function Add-VSResourceGroupsGroupResourceQuery {
    <#
    .SYNOPSIS
        Adds an AWS::ResourceGroups::Group.ResourceQuery resource property to the template. The query used to define a group.

    .DESCRIPTION
        Adds an AWS::ResourceGroups::Group.ResourceQuery resource property to the template.
The query used to define a group.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html

    .PARAMETER Type
        The valid types are TAG_FILTERS_1_0 and CLOUDFORMATION_STACK_1_0. Each type requires specific attributes for the Query object:
+ TAG_FILTERS_1_0 indicates that the group is a tag-based group. Group membership is defined by the query's TagFilters property. Specify the tag filters to use in the query.
+ CLOUDFORMATION_STACK_1_0, the default, indicates that the group is a CloudFormation stack-based group. Group membership is based on the CloudFormation stack. Specify the StackIdentifier property in the query to define which stack to associate the group with, or leave it empty to default to the stack where the group is defined.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Query
        The query that defines a group. This field is required when the type is TAG_FILTERS_1_0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-query
        UpdateType: Mutable
        Type: Query

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ResourceGroups.Group.ResourceQuery')]
    [cmdletbinding()]
    Param
    (
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
        $Type,
        [parameter(Mandatory = $false)]
        $Query
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ResourceGroups.Group.ResourceQuery'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
