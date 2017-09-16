function Add-CreationPolicy {
    <#
    .SYNOPSIS
        Adds a CreationPolicy property to a resoure on the template
    
    .DESCRIPTION
        Associate the CreationPolicy attribute with a resource to prevent its status from reaching create complete until AWS CloudFormation receives a specified number of success signals or the timeout period is exceeded. To signal a resource, you can use the cfn-signal helper script or SignalResource API. AWS CloudFormation publishes valid signals to the stack events so that you track the number of signals sent.

        The creation policy is invoked only when AWS CloudFormation creates the associated resource. Currently, the only AWS CloudFormation resources that support creation policies are AWS::AutoScaling::AutoScalingGroup, AWS::EC2::Instance, and AWS::CloudFormation::WaitCondition.

        Use the CreationPolicy attribute when you want to wait on resource configuration actions before stack creation proceeds. For example, if you install and configure software applications on an EC2 instance, you might want those applications to be running before proceeding. In such cases, you can add a CreationPolicy attribute to the instance, and then send a success signal to the instance after the applications are installed and configured.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html
    
    .PARAMETER AutoScalingCreationPolicy
        For an Auto Scaling group replacement update, specifies how many instances must signal success for the update to succeed.

        Parameter accepts a PSCustomObject. Use this if you are customizing the AutoScalingCreationPolicy properties outside of MinSuccessfulInstancesPercent.
    
    .PARAMETER MinSuccessfulInstancesPercent
        Specifies the percentage of instances in an Auto Scaling replacement update that must signal success for the update to succeed. You can specify a value from 0 to 100. AWS CloudFormation rounds to the nearest tenth of a percent. For example, if you update five instances with a minimum successful percentage of 50, three instances must signal success. If an instance doesn't send a signal within the time specified by the Timeout property, AWS CloudFormation assumes that the instance wasn't created.
    
    .PARAMETER ResourceSignal
        When AWS CloudFormation creates the associated resource, configures the number of required success signals and the length of time that AWS CloudFormation waits for those signals.

        Parameter accepts a PSCustomObject. Use this if you are customizing the ResourceSignal properties outside of Count and/or Timeout.
    
    .PARAMETER Count
        The number of success signals AWS CloudFormation must receive before it sets the resource status as CREATE_COMPLETE. If the resource receives a failure signal or doesn't receive the specified number of signals before the timeout period expires, the resource creation fails and AWS CloudFormation rolls the stack back.
    
    .PARAMETER Timeout
        The length of time that AWS CloudFormation waits for the number of signals that was specified in the Count property. The timeout period starts after AWS CloudFormation starts creating the resource, and the timeout expires no sooner than the time you specify but can occur shortly thereafter. The maximum time that you can specify is 12 hours.

        The value must be in ISO8601 duration format, in the form: "PT#H#M#S", where each # is the number of hours, minutes, and seconds, respectively. For best results, specify a period of time that gives your instances plenty of time to get up and running. A shorter timeout can cause a rollback.

    .EXAMPLE
        $templateInit = Initialize-Vaporshell -Description "Testing"
        $templateInit.AddResource(
            (
                New-VaporResource -LogicalId "AutoScalingGroup" -Type "AWS::AutoScaling::AutoScalingGroup" -Properties ([PSCustomObject][Ordered]@{
                        "AvailabilityZones"       = (Add-FnGetAZs -Region "$_AWSRegion")
                        "LaunchConfigurationName" = (Add-FnRef -Ref "LaunchConfig")
                        "DesiredCapacity"         = "3"
                        "MinSize"                 = "1"
                        "MaxSize"                 = "4"
                    }) -CreationPolicy (Add-CreationPolicy -Count 3 -Timeout "PT15M") -UpdatePolicy (Add-UpdatePolicy -IgnoreUnmodifiedGroupSizeProperties True -MinInstancesInService 1 -MaxBatchSize 2 -WaitOnResourceSignals True -PauseTime "PT10M")
            )
        )

        When the template is exported, this will convert to: 
```json
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Testing",
    "Resources": {
        "AutoScalingGroup": {
            "Type": "AWS::AutoScaling::AutoScalingGroup",
            "Properties": {
                "AvailabilityZones": {
                    "Fn::GetAZs": "AWS::Region"
                },
                "LaunchConfigurationName": {
                    "Ref": "LaunchConfig"
                },
                "DesiredCapacity": "3",
                "MinSize": "1",
                "MaxSize": "4"
            },
            "CreationPolicy": {
                "ResourceSignal": {
                    "Count": "3",
                    "Timeout": "PT15M"
                }
            },
            "UpdatePolicy": {
                "AutoScalingScheduledAction": {
                    "IgnoreUnmodifiedGroupSizeProperties": "true"
                },
                "AutoScalingRollingUpdate": {
                    "MinInstancesInService": "1",
                    "MaxBatchSize": "2",
                    "WaitOnResourceSignals": "true",
                    "PauseTime": "PT10M"
                }
            }
        }
    }
}
```

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CreationPolicy')]
    [cmdletbinding(DefaultParameterSetName="CountTimeout")]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [parameter(ParameterSetName="AutoScalingCreationPolicy")]
        [parameter(ParameterSetName="ResourceSignal")]
        [parameter(ParameterSetName="CountTimeout")]
        [System.Management.Automation.PSCustomObject]
        $AutoScalingCreationPolicy,
        [parameter(Mandatory = $false,Position = 1)]
        [parameter(ParameterSetName="MinSuccessfulInstancesPercent")]
        [parameter(ParameterSetName="ResourceSignal")]
        [parameter(ParameterSetName="CountTimeout")]
        [ValidateRange(0,100)]
        [Int]
        $MinSuccessfulInstancesPercent,
        [parameter(Mandatory = $false,Position = 2)]
        [parameter(ParameterSetName="AutoScalingCreationPolicy")]
        [parameter(ParameterSetName="MinSuccessfulInstancesPercent")]
        [parameter(ParameterSetName="ResourceSignal")]
        [System.Management.Automation.PSCustomObject]
        $ResourceSignal,
        [parameter(Mandatory = $false,Position = 3)]
        [parameter(ParameterSetName="AutoScalingCreationPolicy")]
        [parameter(ParameterSetName="MinSuccessfulInstancesPercent")]
        [parameter(ParameterSetName="CountTimeout")]
        [Int]
        $Count,
        [parameter(Mandatory = $false,Position = 4)]
        [parameter(ParameterSetName="AutoScalingCreationPolicy")]
        [parameter(ParameterSetName="MinSuccessfulInstancesPercent")]
        [parameter(ParameterSetName="CountTimeout")]
        [ValidatePattern("^P(?!$)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?=\d+[HMS])(\d+H)?(\d+M)?(\d+S)?)?$")]
        [System.String]
        $Timeout
    )
    Begin {
        if (!($PSBoundParameters.Keys.Count)) {
            $PSCmdlet.ThrowTerminatingError((New-VSError -String "No parameters passed! Please specify at least one parameter, otherwise exclude this call of $($MyInvocation.MyCommand)."))
        }
        $obj = [PSCustomObject]@{}
        $ASCP = [PSCustomObject]@{}
        $RS = [PSCustomObject]@{}
    }
    Process {
        switch ($PSBoundParameters.Keys) {
            'AutoScalingCreationPolicy' {
                $obj | Add-Member -MemberType AutoScalingCreationPolicy -Name Count -Value $AutoScalingCreationPolicy
            }
            'MinSuccessfulInstancesPercent' {
                $ASCP | Add-Member -MemberType NoteProperty -Name MinSuccessfulInstancesPercent -Value $($MinSuccessfulInstancesPercent.ToString())
                $obj | Add-Member -MemberType NoteProperty -Name AutoScalingCreationPolicy -Value $ASCP
            }
            'ResourceSignal' {
                $obj | Add-Member -MemberType ResourceSignal -Name Count -Value $ResourceSignal
            }
            'Count' {
                $RS | Add-Member -MemberType NoteProperty -Name Count -Value $($Count.ToString())
            }
            'Timeout' {
                $RS | Add-Member -MemberType NoteProperty -Name Timeout -Value $Timeout
            }
        }
        if ($RS.Timeout -or $RS.Count) {
            $obj | Add-Member -MemberType NoteProperty -Name ResourceSignal -Value $RS
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CreationPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5)`n"
    }
}