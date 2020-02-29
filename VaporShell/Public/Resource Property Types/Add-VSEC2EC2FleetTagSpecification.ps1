function Add-VSEC2EC2FleetTagSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::EC2Fleet.TagSpecification resource property to the template. Specifies the tags to apply to a resource when the resource is being created for an EC2 Fleet.

    .DESCRIPTION
        Adds an AWS::EC2::EC2Fleet.TagSpecification resource property to the template.
Specifies the tags to apply to a resource when the resource is being created for an EC2 Fleet.

TagSpecification is a property of the  AWS::EC2::EC2Fleet: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html

    .PARAMETER ResourceType
        The type of resource to tag. ResourceType must be fleet.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html#cfn-ec2-ec2fleet-tagspecification-resourcetype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Tags
        The tags to apply to the resource.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html#cfn-ec2-ec2fleet-tagspecification-tags
        ItemType: TagRequest
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.EC2Fleet.TagSpecification')]
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
        $ResourceType,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.EC2Fleet.TagRequest"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tags
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.EC2Fleet.TagSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
