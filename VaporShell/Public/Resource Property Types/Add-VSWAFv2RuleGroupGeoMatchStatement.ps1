function Add-VSWAFv2RuleGroupGeoMatchStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.GeoMatchStatement resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.GeoMatchStatement resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html

    .PARAMETER CountryCodes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html#cfn-wafv2-rulegroup-geomatchstatement-countrycodes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.GeoMatchStatement')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CountryCodes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.GeoMatchStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
