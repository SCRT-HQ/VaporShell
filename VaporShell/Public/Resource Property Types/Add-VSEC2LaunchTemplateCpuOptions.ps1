function Add-VSEC2LaunchTemplateCpuOptions {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::LaunchTemplate.CpuOptions resource property to the template. Specifies the CPU options for an instance.

    .DESCRIPTION
        Adds an AWS::EC2::LaunchTemplate.CpuOptions resource property to the template.
Specifies the CPU options for an instance.

CpuOptions is a property of the Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html

    .PARAMETER ThreadsPerCore
        The number of CPU cores for the instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions-threadspercore
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER CoreCount
        The number of CPU cores for the instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions-corecount
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.LaunchTemplate.CpuOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $ThreadsPerCore,
        [parameter(Mandatory = $false)]
        [Int]
        $CoreCount
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.LaunchTemplate.CpuOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
