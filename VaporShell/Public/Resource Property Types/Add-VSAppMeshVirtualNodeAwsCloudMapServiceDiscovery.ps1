function Add-VSAppMeshVirtualNodeAwsCloudMapServiceDiscovery {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.AwsCloudMapServiceDiscovery resource property to the template. An object representing the AWS Cloud Map service discovery information for your virtual node.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.AwsCloudMapServiceDiscovery resource property to the template.
An object representing the AWS Cloud Map service discovery information for your virtual node.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html

    .PARAMETER NamespaceName
        The name of the AWS Cloud Map namespace to use.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-namespacename
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ServiceName
        The name of the AWS Cloud Map service to use.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-servicename
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Attributes
        A string map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-attributes
        ItemType: AwsCloudMapInstanceAttribute
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.AwsCloudMapServiceDiscovery')]
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
        $NamespaceName,
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
        $ServiceName,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppMesh.VirtualNode.AwsCloudMapInstanceAttribute"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Attributes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.AwsCloudMapServiceDiscovery'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
