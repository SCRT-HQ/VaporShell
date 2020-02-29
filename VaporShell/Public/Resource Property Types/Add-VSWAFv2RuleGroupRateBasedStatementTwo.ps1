function Add-VSWAFv2RuleGroupRateBasedStatementTwo {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.RateBasedStatementTwo resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.RateBasedStatementTwo resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html

    .PARAMETER Limit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-limit
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER AggregateKeyType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-aggregatekeytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ScopeDownStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-scopedownstatement
        UpdateType: Mutable
        Type: StatementThree

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.RateBasedStatementTwo')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.RateBasedStatementTwo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
