function Add-VSWAFv2WebACLRuleGroupReferenceStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.RuleGroupReferenceStatement resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.RuleGroupReferenceStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement used to run the rules that are defined in a RuleGroup. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.

You cannot nest a RuleGroupReferenceStatement, for example for use inside a NotStatement or OrStatement. It can only be referenced as a top-level statement within a rule.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html

    .PARAMETER Arn
        The Amazon Resource Name ARN of the entity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-arn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ExcludedRules
        The names of rules that are in the referenced rule group, but that you want AWS WAF to exclude from processing for this rule statement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-excludedrules
        UpdateType: Mutable
        Type: List
        ItemType: ExcludedRule

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.RuleGroupReferenceStatement')]
    [cmdletbinding()]
    Param
    (
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
        $Arn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.WebACL.ExcludedRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExcludedRules
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.RuleGroupReferenceStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
