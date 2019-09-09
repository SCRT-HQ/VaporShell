function Add-VSWAFWebACLWafAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAF::WebACL.WafAction resource property to the template. For the action that is associated with a rule in a WebACL, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a WebACL, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a WebACL.

    .DESCRIPTION
        Adds an AWS::WAF::WebACL.WafAction resource property to the template.
For the action that is associated with a rule in a WebACL, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a WebACL, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a WebACL.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html

    .PARAMETER Type
        Specifies how you want AWS WAF to respond to requests that match the settings in a Rule. Valid settings include the following:
+  ALLOW: AWS WAF allows requests
+  BLOCK: AWS WAF blocks requests
+  COUNT: AWS WAF increments a counter of the requests that match all of the conditions in the rule. AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL. You can't specify COUNT for the default action for a WebACL.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html#cfn-waf-webacl-action-type
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAF.WebACL.WafAction')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAF.WebACL.WafAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
