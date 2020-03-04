function Add-VSWAFv2WebACLXssMatchStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.XssMatchStatement resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.XssMatchStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement that defines a cross-site scripting (XSS match search for AWS WAF to apply to web requests. XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious client-site scripts into other legitimate web browsers. The XSS match statement provides the location in requests that you want AWS WAF to search and text transformations to use on the search area before AWS WAF searches for character sequences that are likely to be malicious strings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html

    .PARAMETER FieldToMatch
        The part of a web request that you want AWS WAF to inspect. For more information, see FieldToMatch.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-fieldtomatch
        UpdateType: Mutable
        Type: FieldToMatch

    .PARAMETER TextTransformations
        Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content identified by FieldToMatch, starting from the lowest priority setting, before inspecting the content for a match.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-texttransformations
        UpdateType: Mutable
        Type: List
        ItemType: TextTransformation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.XssMatchStatement')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $FieldToMatch,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.WebACL.TextTransformation"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TextTransformations
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.XssMatchStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
