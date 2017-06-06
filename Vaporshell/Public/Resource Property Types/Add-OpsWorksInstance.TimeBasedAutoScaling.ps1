function Add-OpsWorksInstance.TimeBasedAutoScaling {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Method resource to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html

    .PARAMETER Friday
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-friday
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    .PARAMETER Monday
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-monday
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    .PARAMETER Saturday
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-saturday
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    .PARAMETER Sunday
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-sunday
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    .PARAMETER Thursday
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-thursday
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    .PARAMETER Tuesday
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-tuesday
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    .PARAMETER Wednesday
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-wednesday
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    [OutputType('Vaporshell.Resource.OpsWorks.Instance.TimeBasedAutoScaling')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Friday,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Monday,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Saturday,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Sunday,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Thursday,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Tuesday,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Wednesday,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.Instance.TimeBasedAutoScaling'
    }
}
