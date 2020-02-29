function Add-VSEMRClusterApplication {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.Application resource property to the template. Application is a property of AWS::EMR::Cluster. The Application property type defines the open-source big data applications for EMR to install and configure when a cluster is created.

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.Application resource property to the template.
Application is a property of AWS::EMR::Cluster. The Application property type defines the open-source big data applications for EMR to install and configure when a cluster is created.

With Amazon EMR release version 4.0 and later, the only accepted parameter is the application Name. To pass arguments to these applications, you use configuration classifications specified using JSON objects in a Configuration property. For more information, see Configuring Applications: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html.

With earlier Amazon EMR releases, the application is any Amazon or third-party software that you can add to the cluster. You can specify the version of the application and arguments to pass to it. Amazon EMR accepts and forwards the argument list to the corresponding installation script as a bootstrap action argument.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html

    .PARAMETER AdditionalInfo
        This option is for advanced users only. This is meta information about clusters and applications that are used for testing and troubleshooting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-additionalinfo
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Mutable

    .PARAMETER Args
        Arguments for Amazon EMR to pass to the application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-args
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER Name
        The name of the application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-name
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Version
        The version of the application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-version
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.Application')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $AdditionalInfo,
        [parameter(Mandatory = $false)]
        $Args,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.Application'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
