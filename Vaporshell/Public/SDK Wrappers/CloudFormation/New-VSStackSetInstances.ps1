function New-VSStackSetInstances {
    <#
    .SYNOPSIS
    Creates new Stack Set Instances.
    
    .PARAMETER StackSetName
    The name or unique ID of the stack set that you want to create stack instances from.
    
    .PARAMETER Accounts
    The names of one or more AWS accounts that you want to create stack instances in the specified region(s) for.
    
    .PARAMETER OperationId
    The unique identifier for this stack set operation. The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically. Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED.
    
    .PARAMETER OperationPreferences
    Preferences for how AWS CloudFormation performs this stack set operation.
    
    .PARAMETER Regions
    The names of one or more regions where you want to create stack instances using the specified AWS account(s).

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
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "CreateStackInstances"
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