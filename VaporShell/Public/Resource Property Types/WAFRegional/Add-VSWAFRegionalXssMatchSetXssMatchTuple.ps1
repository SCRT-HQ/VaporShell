function Add-VSWAFRegionalXssMatchSetXssMatchTuple {
    <#
    .SYNOPSIS
        Adds an AWS::WAFRegional::XssMatchSet.XssMatchTuple resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::WAFRegional::XssMatchSet.XssMatchTuple resource property to the template.
**Note**

This is **AWS WAF Classic** documentation. For more information, see AWS WAF Classic: https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html. With the latest version, AWS WAF has a single set of endpoints for regional and global use.

Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html

    .PARAMETER TextTransformation
        Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on FieldToMatch before inspecting it for a match.
You can only specify a single type of TextTransformation.
**CMD_LINE**
When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:
+ Delete the following characters:  " ' ^
+ Delete spaces before the following characters: / 
+ Replace the following characters with a space: , ;
+ Replace multiple spaces with one space
+ Convert uppercase letters A-Z to lowercase a-z
**COMPRESS_WHITE_SPACE**
Use this option to replace the following characters with a space character decimal 32:
+ f, formfeed, decimal 12
+ t, tab, decimal 9
+ n, newline, decimal 10
+ r, carriage return, decimal 13
+ v, vertical tab, decimal 11
+ non-breaking space, decimal 160
COMPRESS_WHITE_SPACE also replaces multiple spaces with one space.
**HTML_ENTITY_DECODE**
Use this option to replace HTML-encoded characters with unencoded characters. HTML_ENTITY_DECODE performs the following operations:
+ Replaces ampersandquot; with "
+ Replaces ampersandnbsp; with a non-breaking space, decimal 160
+ Replaces ampersandlt; with a "less than" symbol
+ Replaces ampersandgt; with >
+ Replaces characters that are represented in hexadecimal format, ampersand#xhhhh;, with the corresponding characters
+ Replaces characters that are represented in decimal format, ampersand#nnnn;, with the corresponding characters
**LOWERCASE**
Use this option to convert uppercase letters A-Z to lowercase a-z.
**URL_DECODE**
Use this option to decode a URL-encoded value.
**NONE**
Specify NONE if you don't want to perform any text transformations.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-texttransformation
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER FieldToMatch
        Specifies where in a web request to look for cross-site scripting attacks.

        Type: FieldToMatch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-fieldtomatch
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFRegional.XssMatchSet.XssMatchTuple')]
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
        $TextTransformation,
        [parameter(Mandatory = $true)]
        $FieldToMatch
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFRegional.XssMatchSet.XssMatchTuple'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
