function Add-VSWAFRegionalWebACLRule {
    <#
    .SYNOPSIS
        Adds an AWS::WAFRegional::WebACL.Rule resource property to the template. A combination of ByteMatchSet, IPSet, and/or SqlInjectionMatchSet objects that identify the web requests that you want to allow, block, or count. For example, you might create a Rule that includes the following predicates:

    .DESCRIPTION
        Adds an AWS::WAFRegional::WebACL.Rule resource property to the template.
A combination of ByteMatchSet, IPSet, and/or SqlInjectionMatchSet objects that identify the web requests that you want to allow, block, or count. For example, you might create a Rule that includes the following predicates:

+ An IPSet that causes AWS WAF to search for web requests that originate from the IP address 192.0.2.44

+ A ByteMatchSet that causes AWS WAF to search for web requests for which the value of the User-Agent header is BadBot.

To match the settings in this Rule, a request must originate from 192.0.2.44 AND include a User-Agent header for which the value is BadBot.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html

    .PARAMETER Action
        The action that AWS WAF takes when a web request matches all conditions in the rule, such as allow, block, or count the request.

        Type: Action
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-action
        UpdateType: Mutable

    .PARAMETER Priority
        The order in which AWS WAF evaluates the rules in a web ACL. AWS WAF evaluates rules with a lower value before rules with a higher value. The value must be a unique integer. If you have multiple rules in a web ACL, the priority numbers do not need to be consecutive.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-priority
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER RuleId
        The ID of an AWS WAF Regional rule to associate with a web ACL.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-ruleid
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFRegional.WebACL.Rule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Action,
        [parameter(Mandatory = $true)]
        [Int]
        $Priority,
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
        $RuleId
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFRegional.WebACL.Rule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
