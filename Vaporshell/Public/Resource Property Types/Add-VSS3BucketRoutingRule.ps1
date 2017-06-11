function Add-VSS3BucketRoutingRule {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.RoutingRule resource property to the template

    .DESCRIPTION
        Adds an AWS::S3::Bucket.RoutingRule resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html

    .PARAMETER RedirectRule
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-redirectrule
		Required: True
		Type: RedirectRule
		UpdateType: Mutable

    .PARAMETER RoutingRuleCondition
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition
		Required: False
		Type: RoutingRuleCondition
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.RoutingRule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $RedirectRule,
        [parameter(Mandatory = $false)]
        $RoutingRuleCondition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.RoutingRule'
    }
}
