function Add-VSWAFv2WebACLStatementTwo {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.StatementTwo resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.StatementTwo resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html

    .PARAMETER ByteMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-bytematchstatement
        UpdateType: Mutable
        Type: ByteMatchStatement

    .PARAMETER SqliMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-sqlimatchstatement
        UpdateType: Mutable
        Type: SqliMatchStatement

    .PARAMETER XssMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-xssmatchstatement
        UpdateType: Mutable
        Type: XssMatchStatement

    .PARAMETER SizeConstraintStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-sizeconstraintstatement
        UpdateType: Mutable
        Type: SizeConstraintStatement

    .PARAMETER GeoMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-geomatchstatement
        UpdateType: Mutable
        Type: GeoMatchStatement

    .PARAMETER RuleGroupReferenceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-rulegroupreferencestatement
        UpdateType: Mutable
        Type: RuleGroupReferenceStatement

    .PARAMETER IPSetReferenceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-ipsetreferencestatement
        UpdateType: Mutable
        Type: IPSetReferenceStatement

    .PARAMETER RegexPatternSetReferenceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-regexpatternsetreferencestatement
        UpdateType: Mutable
        Type: RegexPatternSetReferenceStatement

    .PARAMETER ManagedRuleGroupStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-managedrulegroupstatement
        UpdateType: Mutable
        Type: ManagedRuleGroupStatement

    .PARAMETER RateBasedStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-ratebasedstatement
        UpdateType: Mutable
        Type: RateBasedStatementTwo

    .PARAMETER AndStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-andstatement
        UpdateType: Mutable
        Type: AndStatementTwo

    .PARAMETER OrStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-orstatement
        UpdateType: Mutable
        Type: OrStatementTwo

    .PARAMETER NotStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-notstatement
        UpdateType: Mutable
        Type: NotStatementTwo

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.StatementTwo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ByteMatchStatement,
        [parameter(Mandatory = $false)]
        $SqliMatchStatement,
        [parameter(Mandatory = $false)]
        $XssMatchStatement,
        [parameter(Mandatory = $false)]
        $SizeConstraintStatement,
        [parameter(Mandatory = $false)]
        $GeoMatchStatement,
        [parameter(Mandatory = $false)]
        $RuleGroupReferenceStatement,
        [parameter(Mandatory = $false)]
        $IPSetReferenceStatement,
        [parameter(Mandatory = $false)]
        $RegexPatternSetReferenceStatement,
        [parameter(Mandatory = $false)]
        $ManagedRuleGroupStatement,
        [parameter(Mandatory = $false)]
        $RateBasedStatement,
        [parameter(Mandatory = $false)]
        $AndStatement,
        [parameter(Mandatory = $false)]
        $OrStatement,
        [parameter(Mandatory = $false)]
        $NotStatement
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.StatementTwo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
