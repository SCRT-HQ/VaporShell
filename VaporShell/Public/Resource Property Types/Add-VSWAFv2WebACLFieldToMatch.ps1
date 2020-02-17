function Add-VSWAFv2WebACLFieldToMatch {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.FieldToMatch resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.FieldToMatch resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html

    .PARAMETER SingleHeader
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singleheader
        UpdateType: Mutable
        Type: SingleHeader

    .PARAMETER SingleQueryArgument
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singlequeryargument
        UpdateType: Mutable
        Type: SingleQueryArgument

    .PARAMETER AllQueryArguments
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-allqueryarguments
        UpdateType: Mutable
        Type: AllQueryArguments

    .PARAMETER UriPath
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-uripath
        UpdateType: Mutable
        Type: UriPath

    .PARAMETER QueryString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-querystring
        UpdateType: Mutable
        Type: QueryString

    .PARAMETER Body
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-body
        UpdateType: Mutable
        Type: Body

    .PARAMETER Method
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-method
        UpdateType: Mutable
        Type: Method

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.FieldToMatch')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SingleHeader,
        [parameter(Mandatory = $false)]
        $SingleQueryArgument,
        [parameter(Mandatory = $false)]
        $AllQueryArguments,
        [parameter(Mandatory = $false)]
        $UriPath,
        [parameter(Mandatory = $false)]
        $QueryString,
        [parameter(Mandatory = $false)]
        $Body,
        [parameter(Mandatory = $false)]
        $Method
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.FieldToMatch'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
