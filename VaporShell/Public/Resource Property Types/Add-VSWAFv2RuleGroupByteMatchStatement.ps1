function Add-VSWAFv2RuleGroupByteMatchStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.ByteMatchStatement resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.ByteMatchStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement that defines a string match search for AWS WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want AWS WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the AWS WAF console and the developer guide, this is refered to as a string match statement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html

    .PARAMETER SearchString
        A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in FieldToMatch. The maximum length of the value is 50 bytes. For alphabetic characters A-Z and a-z, the value is case sensitive.
Don't encode this string. Provide the value that you want AWS WAF to search for. AWS CloudFormation automatically base64 encodes the value for you.
For example, suppose the value of Type is HEADER and the value of Data is User-Agent. If you want to search the User-Agent header for the value BadBot, you provide the string BadBot in the value of SearchString.
You must specify either SearchString or SearchStringBase64 in a ByteMatchStatement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstring
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SearchStringBase64
        String to search for in a web request component, base64-encoded. If you don't want to encode the string, specify the unencoded value in SearchString instead.
You must specify either SearchString or SearchStringBase64 in a ByteMatchStatement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstringbase64
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER FieldToMatch
        The part of a web request that you want AWS WAF to inspect. For more information, see FieldToMatch.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-fieldtomatch
        UpdateType: Mutable
        Type: FieldToMatch

    .PARAMETER TextTransformations
        Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content identified by FieldToMatch, starting from the lowest priority setting, before inspecting the content for a match.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-texttransformations
        UpdateType: Mutable
        Type: List
        ItemType: TextTransformation

    .PARAMETER PositionalConstraint
        The area within the portion of a web request that you want AWS WAF to search for SearchString. Valid values include the following:
**CONTAINS**
The specified part of the web request must include the value of SearchString, but the location doesn't matter.
**CONTAINS_WORD**
The specified part of the web request must include the value of SearchString, and SearchString must contain only alphanumeric characters or underscore A-Z, a-z, 0-9, or _. In addition, SearchString must be a word, which means that both of the following are true:
+ SearchString is at the beginning of the specified part of the web request or is preceded by a character other than an alphanumeric character or underscore _. Examples include the value of a header and ;BadBot.
+ SearchString is at the end of the specified part of the web request or is followed by a character other than an alphanumeric character or underscore _, for example, BadBot; and -BadBot;.
**EXACTLY**
The value of the specified part of the web request must exactly match the value of SearchString.
**STARTS_WITH**
The value of SearchString must appear at the beginning of the specified part of the web request.
**ENDS_WITH**
The value of SearchString must appear at the end of the specified part of the web request.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-positionalconstraint
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.ByteMatchStatement')]
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
        $SearchString,
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
        $SearchStringBase64,
        [parameter(Mandatory = $true)]
        $FieldToMatch,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.RuleGroup.TextTransformation"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TextTransformations,
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
        $PositionalConstraint
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.ByteMatchStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
