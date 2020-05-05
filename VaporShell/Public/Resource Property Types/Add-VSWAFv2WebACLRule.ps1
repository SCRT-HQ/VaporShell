function Add-VSWAFv2WebACLRule {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.Rule resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.Rule resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A single rule, which you can use in a WebACL or RuleGroup to identify web requests that you want to allow, block, or count. Each rule includes one top-level Statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html

    .PARAMETER Name
        A friendly name of the rule. You can't change the name of a Rule after you create it.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-name
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Priority
        If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the Rules in order based on the value of Priority. AWS WAF processes rules with lower priority first. The priorities don't need to be consecutive, but they must all be different.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-priority
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Statement
        The AWS WAF processing statement for the rule, for example ByteMatchStatement or SizeConstraintStatement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-statement
        UpdateType: Mutable
        Type: StatementOne

    .PARAMETER Action
        The action that AWS WAF should take on a web request when it matches the rule's statement. Settings at the web ACL level can override the rule action setting.
This is used only for rules whose statements don't reference a rule group. Rule statements that reference a rule group are RuleGroupReferenceStatement and ManagedRuleGroupReferenceStatement.
You must set either this Action setting or the rule's OverrideAction, but not both:
+ If the rule statement doesn't reference a rule group, you must set this rule action setting and you must not set the rule's override action setting.
+ If the rule statement references a rule group, you must not set this action setting, because the actions are already set on the rules inside the rule group. You must set the rule's override action setting to indicate specifically whether to override the actions that are set on the rules in the rule group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-action
        UpdateType: Mutable
        Type: RuleAction

    .PARAMETER OverrideAction
        The override action to apply to the rules in a rule group, instead of the individual rule action settings. This is used only for rules whose statements reference a rule group. Rule statements that reference a rule group are RuleGroupReferenceStatement and ManagedRuleGroupReferenceStatement.
Set the override action to none to leave the rule group rule actions in effect. Set it to count to only count matches, regardless of the rule action settings.
You must set either this OverrideAction setting or the Action setting, but not both:
+ If the rule statement references a rule group, you must set this override action setting and you must not set the rule's action setting.
+ If the rule statement doesn't reference a rule group, you must set the rule action setting and you must not set the rule's override action setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-overrideaction
        UpdateType: Mutable
        Type: OverrideAction

    .PARAMETER VisibilityConfig
        Defines and enables Amazon CloudWatch metrics and web request sample collection.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-visibilityconfig
        UpdateType: Mutable
        Type: VisibilityConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.Rule')]
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
        $Name,
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
        $Priority,
        [parameter(Mandatory = $true)]
        $Statement,
        [parameter(Mandatory = $false)]
        $Action,
        [parameter(Mandatory = $false)]
        $OverrideAction,
        [parameter(Mandatory = $true)]
        $VisibilityConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.Rule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
