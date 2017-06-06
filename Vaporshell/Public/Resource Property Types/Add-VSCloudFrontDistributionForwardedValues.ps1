function Add-VSCloudFrontDistributionForwardedValues {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html

    .PARAMETER Cookies
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-cookies
		Required: False
		Type: Cookies
		UpdateType: Mutable

    .PARAMETER Headers
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-headers
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER QueryString
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-querystring
		PrimitiveType: Boolean
		Required: True
		UpdateType: Mutable

    .PARAMETER QueryStringCacheKeys
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-querystringcachekeys
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.ForwardedValues')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Cookies,
        [parameter(Mandatory = $false)]
        $Headers,
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $QueryString,
        [parameter(Mandatory = $false)]
        $QueryStringCacheKeys
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.ForwardedValues'
    }
}
