function Add-VSEMRClusterBootstrapActionConfig {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.BootstrapActionConfig resource property to the template. BootstrapActionConfig is a property of AWS::EMR::Cluster that can be used to run bootstrap actions on EMR clusters. You can use a bootstrap action to install software and configure EC2 instances for all cluster nodes before EMR installs and configures open-source big data applications on cluster instances. For more information, see Create Bootstrap Actions to Install Additional Software: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-bootstrap.html in the *Amazon EMR Management Guide*.

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.BootstrapActionConfig resource property to the template.
BootstrapActionConfig is a property of AWS::EMR::Cluster that can be used to run bootstrap actions on EMR clusters. You can use a bootstrap action to install software and configure EC2 instances for all cluster nodes before EMR installs and configures open-source big data applications on cluster instances. For more information, see Create Bootstrap Actions to Install Additional Software: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-bootstrap.html in the *Amazon EMR Management Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html

    .PARAMETER Name
        The name of the bootstrap action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html#cfn-elasticmapreduce-cluster-bootstrapactionconfig-name
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ScriptBootstrapAction
        The script run by the bootstrap action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html#cfn-elasticmapreduce-cluster-bootstrapactionconfig-scriptbootstrapaction
        Type: ScriptBootstrapActionConfig
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.BootstrapActionConfig')]
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
        $Name,
        [parameter(Mandatory = $true)]
        $ScriptBootstrapAction
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.BootstrapActionConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
