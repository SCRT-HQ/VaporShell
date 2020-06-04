function Add-VSStepFunctionsStateMachineDefinitionSubstitutions {
    <#
    .SYNOPSIS
        Adds an AWS::StepFunctions::StateMachine.DefinitionSubstitutions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::StepFunctions::StateMachine.DefinitionSubstitutions resource property to the template.


    .LINK
        

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.StepFunctions.StateMachine.DefinitionSubstitutions')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.StepFunctions.StateMachine.DefinitionSubstitutions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
