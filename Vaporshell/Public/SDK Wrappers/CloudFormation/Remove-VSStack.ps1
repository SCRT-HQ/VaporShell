function Remove-VSStack {
    [cmdletbinding(SupportsShouldProcess = $true,ConfirmImpact = "High")]
    Param
    (
        [parameter(Mandatory = $false)]
        [String]
        $ClientRequestToken,
        [parameter(Mandatory = $false)]
        [String[]]
        $RetainResources,
        [parameter(Mandatory = $false)]
        [String]
        $RoleARN,
        [parameter(Mandatory = $false)]
        [String]
        $StackName,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "DeleteStack"
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