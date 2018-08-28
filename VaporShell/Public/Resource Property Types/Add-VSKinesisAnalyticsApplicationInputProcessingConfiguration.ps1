function Add-VSKinesisAnalyticsApplicationInputProcessingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalytics::Application.InputProcessingConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisAnalytics::Application.InputProcessingConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html

    .PARAMETER InputLambdaProcessor
		Type: InputLambdaProcessor    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html#cfn-kinesisanalytics-application-inputprocessingconfiguration-inputlambdaprocessor    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalytics.Application.InputProcessingConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $InputLambdaProcessor
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalytics.Application.InputProcessingConfiguration'
    }
}
