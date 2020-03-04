function Add-VSSSMAssociationTarget {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::Association.Target resource property to the template. Target is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies the targets for an SSM document in Systems Manager.

    .DESCRIPTION
        Adds an AWS::SSM::Association.Target resource property to the template.
Target is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies the targets for an SSM document in Systems Manager.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html

    .PARAMETER Key
        User-defined criteria for sending commands that target instances that meet the criteria.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-key
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Values
        User-defined criteria that maps to Key. For example, if you specified tag:ServerRole, you could specify value:WebServer to run a command on instances that include Amazon EC2 tags of ServerRole,WebServer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-values
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.Association.Target')]
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
        $Key,
        [parameter(Mandatory = $true)]
        $Values
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.Association.Target'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
