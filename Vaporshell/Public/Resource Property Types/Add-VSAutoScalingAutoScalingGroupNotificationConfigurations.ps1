function Add-VSAutoScalingAutoScalingGroupNotificationConfigurations {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfigurations resource property to the template

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfigurations resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html

    .PARAMETER NotificationTypes
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-as-group-notificationconfigurations-notificationtypes    
		DuplicatesAllowed: True    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER TopicARN
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations-topicarn    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.NotificationConfigurations')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NotificationTypes,
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
        $TopicARN
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.NotificationConfigurations'
    }
}
