function Add-VSWAFv2WebACLRateBasedStatementOne {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.RateBasedStatementOne resource property to the template. A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that's sending excessive requests.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.RateBasedStatementOne resource property to the template.
A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that's sending excessive requests.

When the rule action triggers, AWS WAF blocks additional requests from the IP address until the request rate falls below the limit.

You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement. You can't nest a RateBasedStatement, for example for use inside a NotStatement or OrStatement. It can only be referenced as a top-level statement within a rule.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html

    .PARAMETER Limit
        Limit on the web request that match any nested statement criteria in any 5 minute period.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-limit
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER AggregateKeyType
        Setting that indicates how to aggregate the request counts. Currently, you must set this to IP. The request counts are aggregated on IP addresses.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-aggregatekeytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ScopeDownStatement
        Statement nested inside a rate-based statement to narrow the scope of the requests that AWS WAF counts.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-scopedownstatement
        UpdateType: Mutable
        Type: StatementTwo

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.RateBasedStatementOne')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Limit,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AggregateKeyType,
        [parameter(Mandatory = $false)]
        $ScopeDownStatement
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.RateBasedStatementOne'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
