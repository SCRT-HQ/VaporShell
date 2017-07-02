function Add-VSCloudFrontDistributionRestrictions {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.Restrictions resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.Restrictions resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions.html

    .PARAMETER GeoRestriction
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions.html#cfn-cloudfront-distributionconfig-restrictions-georestriction    
		Required: True    
		Type: GeoRestriction    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.Restrictions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $GeoRestriction
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($psParamKey in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $psParamKey).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $psParamKey -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.Restrictions'
    }
}
