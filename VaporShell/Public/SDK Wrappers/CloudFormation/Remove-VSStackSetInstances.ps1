function Remove-VSStackSetInstances {
    <#
    .SYNOPSIS
    Removes Stack Set Instances.

    .PARAMETER StackSetName
    The name or unique ID of the stack set that you want to delete stack instances for.

    .PARAMETER Accounts
    The names of the AWS accounts that you want to delete stack instances for.

    .PARAMETER OperationId
    The unique identifier for this stack set operation. If you don't specify an operation ID, the SDK generates one automatically. The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that AWS CloudFormation successfully received them. Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED.

    .PARAMETER OperationPreferences
    Preferences for how AWS CloudFormation performs this stack set operation.

    .PARAMETER Regions
    The regions where you want to delete stack set instances.

    .PARAMETER RetainStacks
    Removes the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding(SupportsShouldProcess = $true,ConfirmImpact = "High")]
    Param
    (
        [parameter(Mandatory = $true)]
        [String]
        $StackSetName,
        [parameter(Mandatory = $false)]
        [String[]]
        $Accounts,
        [parameter(Mandatory = $false)]
        [String]
        $OperationId,
        [parameter(Mandatory = $false)]
        [Amazon.CloudFormation.Model.StackSetOperationPreferences]
        $OperationPreferences,
        [parameter(Mandatory = $false)]
        [String[]]
        $Regions,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RetainStacks,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        Import-AWSSDK
    }
    Process {
        $method = "DeleteStackInstances"
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            if ($request.PSObject.Properties.Name -contains $key) {
                $request.$key = $PSBoundParameters[$key]
            }
        }
        if ($PSCmdlet.ShouldProcess($request)) {
            $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request
            if (!$results) {
                return
            }
            elseif ($results -is 'System.Management.Automation.ErrorRecord') {
                $PSCmdlet.ThrowTerminatingError($results)
            }
            elseif ($results) {
                return $results
            }
        }
    }
}
