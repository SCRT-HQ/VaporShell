function Add-VSAutoScalingAutoScalingGroupTagProperty {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.TagProperty resource property to the template. TagProperty specifies a list of tags for the Tag property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html. TagProperty adds tags to all associated instances in an Amazon EC2 Auto Scaling group.

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.TagProperty resource property to the template.
TagProperty specifies a list of tags for the Tag property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html. TagProperty adds tags to all associated instances in an Amazon EC2 Auto Scaling group.

For more information, see Tagging Auto Scaling Groups and Instances: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html in the *Amazon EC2 Auto Scaling User Guide*. You can find a sample template snippet in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#aws-properties-as-group--examples section of the AWS::AutoScaling::AutoScalingGroup documentation.

AWS CloudFormation adds the following tags to all Auto Scaling groups and associated instances:

+ aws:cloudformation:stack-name

+ aws:cloudformation:stack-id

+ aws:cloudformation:logical-id

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html

    .PARAMETER Key
        The tag key.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Key
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER PropagateAtLaunch
        Set to true if you want AWS CloudFormation to copy the tag to EC2 instances that are launched as part of the Auto Scaling group. Set to false if you want the tag attached only to the Auto Scaling group and not copied to any instances launched as part of the Auto Scaling group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-PropagateAtLaunch
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Value
        The tag value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Value
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.TagProperty')]
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
        $Key,
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $PropagateAtLaunch,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.TagProperty'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
