function Add-VSStepFunctionsStateMachineCloudWatchLogsLogGroup {
    <#
    .SYNOPSIS
        Adds an AWS::StepFunctions::StateMachine.CloudWatchLogsLogGroup resource property to the template. Defines a CloudWatch log group.

    .DESCRIPTION
        Adds an AWS::StepFunctions::StateMachine.CloudWatchLogsLogGroup resource property to the template.
Defines a CloudWatch log group.

**Note**

CloudWatchLogsLogGroup is only valid when StateMachineType is set to EXPRESS. For more information see Standard Versus Express Workflows: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-standard-vs-express.html in the AWS Step Functions Developer Guide.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html

    .PARAMETER LogGroupArn
        The ARN of the the CloudWatch log group to which you want your logs emitted to. The ARN must end with :*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup-loggrouparn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.StepFunctions.StateMachine.CloudWatchLogsLogGroup')]
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
        $LogGroupArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.StepFunctions.StateMachine.CloudWatchLogsLogGroup'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
