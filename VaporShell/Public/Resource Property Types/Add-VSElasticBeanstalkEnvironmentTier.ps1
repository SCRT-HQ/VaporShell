function Add-VSElasticBeanstalkEnvironmentTier {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticBeanstalk::Environment.Tier resource property to the template. Describes the environment tier for an AWS::ElasticBeanstalk::Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html resource. For more information, see Environment Tiers: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features-managing-env-tiers.html in the *AWS Elastic Beanstalk Developer Guide*.

    .DESCRIPTION
        Adds an AWS::ElasticBeanstalk::Environment.Tier resource property to the template.
Describes the environment tier for an AWS::ElasticBeanstalk::Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html resource. For more information, see Environment Tiers: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features-managing-env-tiers.html in the *AWS Elastic Beanstalk Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html

    .PARAMETER Name
        The name of this environment tier.
Valid values:
+ For *Web server tier* – WebServer
+ For *Worker tier* – Worker

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-name
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Type
        The type of this environment tier.
Valid values:
+ For *Web server tier* – Standard
+ For *Worker tier* – SQS/HTTP

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-type
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Version
        The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
This member is deprecated. Any specific version that you set may become out of date. We recommend leaving it unspecified.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-version
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticBeanstalk.Environment.Tier')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Version
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticBeanstalk.Environment.Tier'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
