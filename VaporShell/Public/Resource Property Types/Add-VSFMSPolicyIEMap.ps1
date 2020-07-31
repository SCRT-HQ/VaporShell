function Add-VSFMSPolicyIEMap {
    <#
    .SYNOPSIS
        Adds an AWS::FMS::Policy.IEMap resource property to the template. Specifies the AWS account IDs to exclude from or include in the policy. Used for the policy's IncludeMap and ExcludeMap.

    .DESCRIPTION
        Adds an AWS::FMS::Policy.IEMap resource property to the template.
Specifies the AWS account IDs to exclude from or include in the policy. Used for the policy's IncludeMap and ExcludeMap.

The key to the map is ACCOUNT. For example, a valid IEMap would be {“ACCOUNT” : “accountID1”, “accountID2”]}.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html

    .PARAMETER ACCOUNT
        The account list for the map.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-account
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ORGUNIT
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-orgunit
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.FMS.Policy.IEMap')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ACCOUNT,
        [parameter(Mandatory = $false)]
        $ORGUNIT
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FMS.Policy.IEMap'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
