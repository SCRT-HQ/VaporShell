function Add-VSElasticLoadBalancingV2ListenerRuleRuleCondition {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition resource property to the template

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html

    .PARAMETER Field
        The field in the HTTP request. The following are the possible values:
+  http-header
+  http-request-method
+  host-header
+  path-pattern
+  query-string
+  source-ip

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-field
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER HostHeaderConfig
        Information for a host header condition. Specify only when Field is host-header.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-hostheaderconfig
        Type: HostHeaderConfig
        UpdateType: Mutable

    .PARAMETER HttpHeaderConfig
        Information for an HTTP header condition. Specify only when Field is http-header.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httpheaderconfig
        Type: HttpHeaderConfig
        UpdateType: Mutable

    .PARAMETER HttpRequestMethodConfig
        Information for an HTTP method condition. Specify only when Field is http-request-method.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httprequestmethodconfig
        Type: HttpRequestMethodConfig
        UpdateType: Mutable

    .PARAMETER PathPatternConfig
        Information for a path pattern condition. Specify only when Field is path-pattern.
Conditional: Required if HttpHeaderConfig is used.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-pathpatternconfig
        Type: PathPatternConfig
        UpdateType: Mutable

    .PARAMETER QueryStringConfig
        Information for a query string condition. Specify only when Field is query-string.
Conditional: Required if HttpHeaderConfig is used.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-querystringconfig
        Type: QueryStringConfig
        UpdateType: Mutable

    .PARAMETER SourceIpConfig
        Information for a source IP condition. Specify only when Field is source-ip.
Conditional: Required if HttpHeaderConfig is used.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-sourceipconfig
        Type: SourceIpConfig
        UpdateType: Mutable

    .PARAMETER Values
        The condition value.
You can only use Values if the condition type is host-header and path-pattern. You can not specify both Values and HostHeaderConfig at the same time.
If Field is host-header, you can specify a single host name for example, my.example.com. A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters.
+ A-Z, a-z, 0-9
+ - .
+ * matches 0 or more characters
+ ? matches exactly 1 character
If Field is path-pattern, you can specify a single path pattern for example, /img/*. A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters.
+ A-Z, a-z, 0-9
+ _ - . $ / ~ " ' @ : +
+ & using &amp;
+ * matches 0 or more characters
+ ? matches exactly 1 character

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-values
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RuleCondition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Field,
        [parameter(Mandatory = $false)]
        $HostHeaderConfig,
        [parameter(Mandatory = $false)]
        $HttpHeaderConfig,
        [parameter(Mandatory = $false)]
        $HttpRequestMethodConfig,
        [parameter(Mandatory = $false)]
        $PathPatternConfig,
        [parameter(Mandatory = $false)]
        $QueryStringConfig,
        [parameter(Mandatory = $false)]
        $SourceIpConfig,
        [parameter(Mandatory = $false)]
        $Values
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RuleCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
