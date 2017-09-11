function Remove-VSStackSetInstances {
    [cmdletbinding(SupportsShouldProcess = $true,ConfirmImpact = "High")]
    Param
    (
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
        $StackSetName,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
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