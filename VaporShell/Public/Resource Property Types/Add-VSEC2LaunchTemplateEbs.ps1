function Add-VSEC2LaunchTemplateEbs {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::LaunchTemplate.Ebs resource property to the template

    .DESCRIPTION
        Adds an AWS::EC2::LaunchTemplate.Ebs resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html

    .PARAMETER SnapshotId
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-snapshotid    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER VolumeType
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-volumetype    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER KmsKeyId
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-kmskeyid    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER Encrypted
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-encrypted    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER Iops
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-iops    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER VolumeSize
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-volumesize    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER DeleteOnTermination
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-deleteontermination    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.LaunchTemplate.Ebs')]
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
        $SnapshotId,
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
        $VolumeType,
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
        $KmsKeyId,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $Encrypted,
        [parameter(Mandatory = $false)]
        [Int]
        $Iops,
        [parameter(Mandatory = $false)]
        [Int]
        $VolumeSize,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DeleteOnTermination
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.LaunchTemplate.Ebs'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
