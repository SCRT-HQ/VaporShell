function Add-VSWAFv2RuleGroupStatementThree {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.StatementThree resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.StatementThree resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html

    .PARAMETER ByteMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-bytematchstatement
        UpdateType: Mutable
        Type: ByteMatchStatement

    .PARAMETER SqliMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-sqlimatchstatement
        UpdateType: Mutable
        Type: SqliMatchStatement

    .PARAMETER XssMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-xssmatchstatement
        UpdateType: Mutable
        Type: XssMatchStatement

    .PARAMETER SizeConstraintStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-sizeconstraintstatement
        UpdateType: Mutable
        Type: SizeConstraintStatement

    .PARAMETER GeoMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-geomatchstatement
        UpdateType: Mutable
        Type: GeoMatchStatement

    .PARAMETER IPSetReferenceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-ipsetreferencestatement
        UpdateType: Mutable
        Type: IPSetReferenceStatement

    .PARAMETER RegexPatternSetReferenceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-regexpatternsetreferencestatement
        UpdateType: Mutable
        Type: RegexPatternSetReferenceStatement

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.StatementThree')]
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
        $IPSetReferenceStatement,
        [parameter(Mandatory = $false)]
        $RegexPatternSetReferenceStatement
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.StatementThree'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
