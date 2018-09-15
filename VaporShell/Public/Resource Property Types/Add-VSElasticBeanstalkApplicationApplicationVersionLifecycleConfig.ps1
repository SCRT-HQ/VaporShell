function Add-VSElasticBeanstalkApplicationApplicationVersionLifecycleConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html

    .PARAMETER MaxAgeRule
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxagerule    
		Required: False    
		Type: MaxAgeRule    
		UpdateType: Mutable    

    .PARAMETER MaxCountRule
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxcountrule    
		Required: False    
		Type: MaxCountRule    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticBeanstalk.Application.ApplicationVersionLifecycleConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MaxAgeRule,
        [parameter(Mandatory = $false)]
        $MaxCountRule
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticBeanstalk.Application.ApplicationVersionLifecycleConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
