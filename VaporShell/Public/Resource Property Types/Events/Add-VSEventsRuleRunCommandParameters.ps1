function Add-VSEventsRuleRunCommandParameters {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Rule.RunCommandParameters resource property to the template. The RunCommandParameters property type specifies the parameters to use when a rule invokes the AWS Systems Manager Run Command.

    .DESCRIPTION
        Adds an AWS::Events::Rule.RunCommandParameters resource property to the template.
The RunCommandParameters property type specifies the parameters to use when a rule invokes the AWS Systems Manager Run Command.

RunCommandParameters is a property of the Target: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html property type.

This parameter contains the criteria (either InstanceIds or a tag used to specify which EC2 instances are to be sent the command.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html

    .PARAMETER RunCommandTargets
        The criteria either InstanceIds or a tag that specifies which EC2 instances the command is sent to.
Currently, you can include only one RunCommandTarget block, which specifies a list of InstanceIds or a tag.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html#cfn-events-rule-runcommandparameters-runcommandtargets
        DuplicatesAllowed: False
        ItemType: RunCommandTarget
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Events.Rule.RunCommandParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Events.Rule.RunCommandTarget"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RunCommandTargets
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Events.Rule.RunCommandParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
