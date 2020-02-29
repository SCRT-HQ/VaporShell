function Add-VSWAFRegionalWebACLAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAFRegional::WebACL.Action resource property to the template. Specifies the action AWS WAF takes when a web request matches or doesn't match all rule conditions.

    .DESCRIPTION
        Adds an AWS::WAFRegional::WebACL.Action resource property to the template.
Specifies the action AWS WAF takes when a web request matches or doesn't match all rule conditions.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html

    .PARAMETER Type
        For actions that are associated with a rule, the action that AWS WAF takes when a web request matches all conditions in a rule.
For the default action of a web access control list ACL, the action that AWS WAF takes when a web request doesn't match all conditions in any rule.
Valid settings include the following:
+  ALLOW: AWS WAF allows requests
+  BLOCK: AWS WAF blocks requests
+  COUNT: AWS WAF increments a counter of the requests that match all of the conditions in the rule. AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL. You can't specify COUNT for the default action for a WebACL.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html#cfn-wafregional-webacl-action-type
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFRegional.WebACL.Action')]
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
        $Type
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFRegional.WebACL.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
