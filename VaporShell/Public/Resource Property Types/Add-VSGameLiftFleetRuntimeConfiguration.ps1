function Add-VSGameLiftFleetRuntimeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::GameLift::Fleet.RuntimeConfiguration resource property to the template. A collection of server process configurations that describe the processes to run on each instance in a fleet. All fleets must have a runtime configuration. Each instance in the fleet maintains server processes as specified in the runtime configuration, launching new ones as existing processes end. Each instance regularly checks for an updated runtime configuration makes adjustments as called for.

    .DESCRIPTION
        Adds an AWS::GameLift::Fleet.RuntimeConfiguration resource property to the template.
A collection of server process configurations that describe the processes to run on each instance in a fleet. All fleets must have a runtime configuration. Each instance in the fleet maintains server processes as specified in the runtime configuration, launching new ones as existing processes end. Each instance regularly checks for an updated runtime configuration makes adjustments as called for.

The runtime configuration enables the instances in a fleet to run multiple processes simultaneously. Potential scenarios are as follows: (1 Run multiple processes of a single game server executable to maximize usage of your hosting resources. (2 Run one or more processes of different executables, such as your game server and a metrics tracking program. (3 Run multiple processes of a single game server but with different launch parameters, for example to run one process on each instance in debug mode.

An Amazon GameLift instance is limited to 50 processes running simultaneously. A runtime configuration must specify fewer than this limit. To calculate the total number of processes specified in a runtime configuration, add the values of the ConcurrentExecutions parameter for each ServerProcess object in the runtime configuration.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html

    .PARAMETER GameSessionActivationTimeoutSeconds
        The maximum amount of time in seconds that a game session can remain in status ACTIVATING. If the game session is not active before the timeout, activation is terminated and the game session status is changed to TERMINATED.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-gamesessionactivationtimeoutseconds
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MaxConcurrentGameSessionActivations
        The maximum number of game sessions with status ACTIVATING to allow on an instance simultaneously. This setting limits the amount of instance resources that can be used for new game activations at any one time.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-maxconcurrentgamesessionactivations
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ServerProcesses
        A collection of server process configurations that describe which server processes to run on each instance in a fleet.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-serverprocesses
        DuplicatesAllowed: False
        ItemType: ServerProcess
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GameLift.Fleet.RuntimeConfiguration')]
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
        $GameSessionActivationTimeoutSeconds,
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
        $MaxConcurrentGameSessionActivations,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.GameLift.Fleet.ServerProcess"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ServerProcesses
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GameLift.Fleet.RuntimeConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
