function Add-VSConfigRemediationConfigurationSsmControls {
    <#
    .SYNOPSIS
        Adds an AWS::Config::RemediationConfiguration.SsmControls resource property to the template. <a name="aws-properties-config-remediationconfiguration-ssmcontrols-description"></a>The SsmControls property type specifies Not currently supported by AWS CloudFormation. for an AWS::Config::RemediationConfiguration: aws-resource-config-remediationconfiguration.md.

    .DESCRIPTION
        Adds an AWS::Config::RemediationConfiguration.SsmControls resource property to the template.
<a name="aws-properties-config-remediationconfiguration-ssmcontrols-description"></a>The SsmControls property type specifies Not currently supported by AWS CloudFormation. for an AWS::Config::RemediationConfiguration: aws-resource-config-remediationconfiguration.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html

    .PARAMETER ErrorPercentage
        The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%. For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-errorpercentage
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ConcurrentExecutionRatePercentage
        The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-concurrentexecutionratepercentage
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Config.RemediationConfiguration.SsmControls')]
    [cmdletbinding()]
    Param
    (
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
        $ErrorPercentage,
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
        $ConcurrentExecutionRatePercentage
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Config.RemediationConfiguration.SsmControls'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
