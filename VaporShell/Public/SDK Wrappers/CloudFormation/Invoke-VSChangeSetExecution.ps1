function Invoke-VSChangeSetExecution {
    <#
    .SYNOPSIS
    Executes a Change Set

    .DESCRIPTION
    Executes a Change Set

    .PARAMETER ChangeSetName
    The name or ARN of the change set that you want use to update the specified stack.

    .PARAMETER StackName
    If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute.

    .PARAMETER ClientRequestToken
    A unique identifier for this ExecuteChangeSet request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry ExecuteChangeSet requests to ensure that AWS CloudFormation successfully received them.

    .PARAMETER Watch
    If $true, runs Watch-Stack to show the colorized output of the stack events.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [String]
        $ChangeSetName,
        [parameter(Mandatory = $true)]
        [String]
        $StackName,
        [parameter(Mandatory = $false)]
        [String]
        $ClientRequestToken,
        [parameter(Mandatory = $false)]
        [switch]
        $Watch,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = 'ExecuteChangeSet'
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            if ($request.PSObject.Properties.Name -contains $key) {
                $request.$key = $PSBoundParameters[$key]
            }
        }
        $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request
        if (!$results) {
            return
        }
        elseif ($results -is 'System.Management.Automation.ErrorRecord') {
            $PSCmdlet.ThrowTerminatingError($results)
        }
        elseif ($results) {
            $results
            if ($Watch) {
                Write-Verbose "Watching Stack!"
                $results | Watch-Stack -ProfileName $ProfileName -Verbose:$false
            }
        }
    }
}
