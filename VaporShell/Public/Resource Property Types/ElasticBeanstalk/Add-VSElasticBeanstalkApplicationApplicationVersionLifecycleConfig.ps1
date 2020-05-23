function Add-VSElasticBeanstalkApplicationApplicationVersionLifecycleConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig resource property to the template. The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.

    .DESCRIPTION
        Adds an AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig resource property to the template.
The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.

When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment. The source bundle remains in S3 unless you configure the rule to delete it.

ApplicationVersionLifecycleConfig is a property of the ApplicationResourceLifecycleConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html

    .PARAMETER MaxAgeRule
        Specify a max age rule to restrict the length of time that application versions are retained for an application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxagerule
        Type: MaxAgeRule
        UpdateType: Mutable

    .PARAMETER MaxCountRule
        Specify a max count rule to restrict the number of application versions that are retained for an application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxcountrule
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
