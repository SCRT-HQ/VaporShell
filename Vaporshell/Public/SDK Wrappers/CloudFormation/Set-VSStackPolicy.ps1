function Set-VSStackPolicy {
    [cmdletbinding(DefaultParameterSetName = "StackPolicyBody")]
    Param
    (
        [parameter(Mandatory = $false)]
        [String]
        $StackName,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "StackPolicyBody",ValueFromPipeline = $true)]
        [String]
        $StackPolicyBody,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "Path")]
        [ValidateScript( {Test-Path $_})]
        [String]
        $Path,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "StackPolicyURL")]
        [String]
        $StackPolicyURL,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "SetStackPolicy"
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                Path {
                    $request.StackPolicyBody = [System.IO.File]::ReadAllText((Resolve-Path $Path))
                }
                Default {
                    if ($request.PSObject.Properties.Name -contains $key) {
                        $request.$key = $PSBoundParameters[$key]
                    }
                }
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
            return $results
        }
    }
}