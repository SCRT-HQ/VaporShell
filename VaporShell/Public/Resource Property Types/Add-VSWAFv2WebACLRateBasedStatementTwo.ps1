function Add-VSWAFv2WebACLRateBasedStatementTwo {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.RateBasedStatementTwo resource property to the template. Rules statement.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.RateBasedStatementTwo resource property to the template.
Rules statement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html

    .PARAMETER Limit
        Limit on the web request that match any nested statement criteria in any 5 minute period.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-limit
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER AggregateKeyType
        Setting that indicates how to aggregate the request counts. Currently, you must set this to IP. The request counts are aggregated on IP addresses.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-aggregatekeytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ScopeDownStatement
        Statement nested inside a rate-based statement to narrow the scope of the requests that AWS WAF counts.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-scopedownstatement
        UpdateType: Mutable
        Type: StatementThree

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.RateBasedStatementTwo')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.RateBasedStatementTwo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
