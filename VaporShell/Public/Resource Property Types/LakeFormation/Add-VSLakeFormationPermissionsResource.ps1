function Add-VSLakeFormationPermissionsResource {
    <#
    .SYNOPSIS
        Adds an AWS::LakeFormation::Permissions.Resource resource property to the template. A structure for the resource.

    .DESCRIPTION
        Adds an AWS::LakeFormation::Permissions.Resource resource property to the template.
A structure for the resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html

    .PARAMETER TableResource
        A structure for the table object. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal.

        Type: TableResource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tableresource
        UpdateType: Mutable

    .PARAMETER DatabaseResource
        A structure for the database object.

        Type: DatabaseResource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-databaseresource
        UpdateType: Mutable

    .PARAMETER DataLocationResource
        Currently not supported by AWS CloudFormation.

        Type: DataLocationResource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-datalocationresource
        UpdateType: Mutable

    .PARAMETER TableWithColumnsResource
        Currently not supported by AWS CloudFormation.

        Type: TableWithColumnsResource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tablewithcolumnsresource
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LakeFormation.Permissions.Resource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TableResource,
        [parameter(Mandatory = $false)]
        $DatabaseResource,
        [parameter(Mandatory = $false)]
        $DataLocationResource,
        [parameter(Mandatory = $false)]
        $TableWithColumnsResource
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LakeFormation.Permissions.Resource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
