function Add-ApiGatewayUsagePlanThrottleSettings {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::UsagePlan.ThrottleSettings resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html

    .PARAMETER BurstLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-burstlimit
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER RateLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-ratelimit
		PrimitiveType: Double
		Required: False
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.UsagePlan.ThrottleSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $BurstLimit,
        [parameter(Mandatory = $false)]
        [Int]
        $RateLimit
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True" -or $val -eq "False") {
                $val = $val.ToLower()
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.UsagePlan.ThrottleSettings'
    }
}
