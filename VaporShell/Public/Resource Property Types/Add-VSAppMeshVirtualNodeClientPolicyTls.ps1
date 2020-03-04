function Add-VSAppMeshVirtualNodeClientPolicyTls {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.ClientPolicyTls resource property to the template. 

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.ClientPolicyTls resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html

    .PARAMETER Validation
        Type: TlsValidationContext
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-validation
        UpdateType: Mutable

    .PARAMETER Enforce
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-enforce
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Ports
        PrimitiveItemType: Integer
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-ports
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.ClientPolicyTls')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Validation,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enforce,
        [parameter(Mandatory = $false)]
        $Ports
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.ClientPolicyTls'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
