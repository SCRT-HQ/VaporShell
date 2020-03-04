function Add-VSKinesisAnalyticsV2ApplicationParallelismConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration resource property to the template. Describes parameters for how a Java-based Amazon Kinesis Data Analytics application executes multiple tasks simultaneously. For more information about parallelism, see Parallel Execution: https://ci.apache.org/projects/flink/flink-docs-release-1.8/dev/parallel.html in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.8/.

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration resource property to the template.
Describes parameters for how a Java-based Amazon Kinesis Data Analytics application executes multiple tasks simultaneously. For more information about parallelism, see Parallel Execution: https://ci.apache.org/projects/flink/flink-docs-release-1.8/dev/parallel.html in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.8/.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html

    .PARAMETER ConfigurationType
        Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. You must set this property to CUSTOM in order to change your application's AutoScalingEnabled, Parallelism, or ParallelismPerKPU properties.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-configurationtype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ParallelismPerKPU
        Describes the number of parallel tasks that a Java-based Kinesis Data Analytics application can perform per Kinesis Processing Unit KPU used by the application. For more information about KPUs, see Amazon Kinesis Data Analytics Pricing: http://aws.amazon.com/kinesis/data-analytics/pricing/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelismperkpu
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER AutoScalingEnabled
        Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-autoscalingenabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Parallelism
        Describes the initial number of parallel tasks that a Java-based Kinesis Data Analytics application can perform. The Kinesis Data Analytics service can increase this number automatically if ParallelismConfiguration:AutoScalingEnabled: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_ParallelismConfiguration.html#kinesisanalytics-Type-ParallelismConfiguration-AutoScalingEnabled.html is set to true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelism
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.Application.ParallelismConfiguration')]
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
        $ConfigurationType,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ParallelismPerKPU,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AutoScalingEnabled,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Parallelism
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.Application.ParallelismConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
