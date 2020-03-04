function Add-VSIoTAnalyticsDatasetS3DestinationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Dataset.S3DestinationConfiguration resource property to the template. Configuration information for delivery of dataset contents to Amazon S3.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Dataset.S3DestinationConfiguration resource property to the template.
Configuration information for delivery of dataset contents to Amazon S3.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html

    .PARAMETER GlueConfiguration
        Configuration information for coordination with AWS Glue, a fully managed extract, transform and load ETL service.

        Type: GlueConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-glueconfiguration
        UpdateType: Mutable

    .PARAMETER Bucket
        The name of the S3 bucket to which dataset contents are delivered.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-bucket
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Key
        The key of the dataset contents object. Each object in an S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. To produce a unique key, you can use !{iotanalytics:scheduleTime} to insert the time of the scheduled SQL query run, or !{iotanalytics:versionId} to insert a unique hash identifying the dataset for example, /DataSet/!{iotanalytics:scheduleTime}/!{iotanalytics:versionId}.csv.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-key
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER RoleArn
        The ARN of the role that grants AWS IoT Analytics permission to interact with your Amazon S3 and AWS Glue resources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-rolearn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Dataset.S3DestinationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $GlueConfiguration,
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
        $Bucket,
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
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RoleArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Dataset.S3DestinationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
