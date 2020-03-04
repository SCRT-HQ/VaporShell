function Add-VSWAFv2RuleGroupGeoMatchStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.GeoMatchStatement resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.GeoMatchStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement used to identify web requests based on country of origin.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html

    .PARAMETER CountryCodes
        An array of two-character country codes, for example,  "US", "CN" ], from the alpha-2 country ISO codes of the ISO 3166 international standard.

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
