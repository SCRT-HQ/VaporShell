function Add-VSCloudFrontDistributionGeoRestriction {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.GeoRestriction resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.GeoRestriction resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions-georestriction.html

    .PARAMETER Locations
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions-georestriction.html#cfn-cloudfront-distributionconfig-restrictions-georestriction-locations
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER RestrictionType
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions-georestriction.html#cfn-cloudfront-distributionconfig-restrictions-georestriction-restrictiontype
		PrimitiveType: String
		Required: True
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.GeoRestriction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Locations,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $RestrictionType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.GeoRestriction'
    }
}
