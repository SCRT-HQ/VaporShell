function Add-VSStepFunctionsStateMachineLogDestination {
    <#
    .SYNOPSIS
        Adds an AWS::StepFunctions::StateMachine.LogDestination resource property to the template. Defines a destination for LoggingConfiguration.

    .DESCRIPTION
        Adds an AWS::StepFunctions::StateMachine.LogDestination resource property to the template.
Defines a destination for LoggingConfiguration.

**Note**

LogDestination is only valid when StateMachineType is set to EXPRESS. For more information on logging with EXPRESS workflows, see Logging Express Workflows Using CloudWatch Logs: https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html

    .PARAMETER CloudWatchLogsLogGroup
        An object describing a CloudWatch log group. For more information, see AWS::Logs::LogGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html in the AWS CloudFormation User Guide.

        Type: CloudWatchLogsLogGroup
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.StepFunctions.StateMachine.LogDestination')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CloudWatchLogsLogGroup
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.StepFunctions.StateMachine.LogDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
