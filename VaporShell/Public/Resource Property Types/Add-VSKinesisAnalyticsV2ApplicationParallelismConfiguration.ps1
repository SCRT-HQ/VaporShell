function Add-VSKinesisAnalyticsV2ApplicationParallelismConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html

    .PARAMETER ConfigurationType
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-configurationtype    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER ParallelismPerKPU
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelismperkpu    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER AutoScalingEnabled
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-autoscalingenabled    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER Parallelism
		Required: False    
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
        [Int]
        $ParallelismPerKPU,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AutoScalingEnabled,
        [parameter(Mandatory = $false)]
        [Int]
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
