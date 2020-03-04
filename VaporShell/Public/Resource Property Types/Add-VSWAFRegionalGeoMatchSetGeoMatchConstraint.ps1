function Add-VSWAFRegionalGeoMatchSetGeoMatchConstraint {
    <#
    .SYNOPSIS
        Adds an AWS::WAFRegional::GeoMatchSet.GeoMatchConstraint resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::WAFRegional::GeoMatchSet.GeoMatchConstraint resource property to the template.
**Note**

This is **AWS WAF Classic** documentation. For more information, see AWS WAF Classic: https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html. With the latest version, AWS WAF has a single set of endpoints for regional and global use.

The country from which web requests originate that you want AWS WAF to search for.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html

    .PARAMETER Type
        The type of geographical area you want AWS WAF to search for. Currently Country is the only valid value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html#cfn-wafregional-geomatchset-geomatchconstraint-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Value
        The country that you want AWS WAF to search for.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html#cfn-wafregional-geomatchset-geomatchconstraint-value
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFRegional.GeoMatchSet.GeoMatchConstraint')]
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
        $Type,
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
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFRegional.GeoMatchSet.GeoMatchConstraint'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
