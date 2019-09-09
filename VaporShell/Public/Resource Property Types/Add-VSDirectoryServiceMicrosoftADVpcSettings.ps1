function Add-VSDirectoryServiceMicrosoftADVpcSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DirectoryService::MicrosoftAD.VpcSettings resource property to the template. Contains VPC information for the CreateDirectory: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateDirectory.html or CreateMicrosoftAD: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateMicrosoftAD.html operation.

    .DESCRIPTION
        Adds an AWS::DirectoryService::MicrosoftAD.VpcSettings resource property to the template.
Contains VPC information for the CreateDirectory: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateDirectory.html or CreateMicrosoftAD: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateMicrosoftAD.html operation.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html

    .PARAMETER SubnetIds
        The identifiers of the subnets for the directory servers. The two subnets must be in different Availability Zones. AWS Directory Service specifies a directory server and a DNS server in each of these subnets.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-subnetids
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER VpcId
        The identifier of the VPC in which to create the directory.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-vpcid
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DirectoryService.MicrosoftAD.VpcSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SubnetIds,
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
        $VpcId
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DirectoryService.MicrosoftAD.VpcSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
