function Add-VSConfigRemediationConfigurationRemediationParameterValue {
    <#
    .SYNOPSIS
        Adds an AWS::Config::RemediationConfiguration.RemediationParameterValue resource property to the template. The value is either a dynamic (resource value or a static value. You must select either a dynamic value or a static value.

    .DESCRIPTION
        Adds an AWS::Config::RemediationConfiguration.RemediationParameterValue resource property to the template.
The value is either a dynamic (resource value or a static value. You must select either a dynamic value or a static value.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html

    .PARAMETER ResourceValue
        The value is dynamic and changes at run-time.

        Type: ResourceValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-resourcevalue
        UpdateType: Mutable

    .PARAMETER StaticValue
        The value is static and does not change at run-time.

        Type: StaticValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-staticvalue
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Config.RemediationConfiguration.RemediationParameterValue')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ResourceValue,
        [parameter(Mandatory = $false)]
        $StaticValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Config.RemediationConfiguration.RemediationParameterValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
