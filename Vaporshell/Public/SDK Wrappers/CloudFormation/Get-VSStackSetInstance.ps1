function Get-VSStackSetInstance {
    [cmdletbinding(DefaultParameterSetName = "Description")]
    Param
    (
        [parameter(ParameterSetName = "Description")]
        [Switch]
        $Description,
        [parameter(ParameterSetName = "ListStackInstances")]
        [Switch]
        $List,
        [parameter(Mandatory = $false)]
        [String]
        $StackInstanceAccount,
        [parameter(Mandatory = $false)]
        [String]
        $StackInstanceRegion,
        [parameter(Mandatory = $false)]
        [String]
        $StackSetName,
        [parameter(ParameterSetName = "ListStackInstances")]
        [System.Int32]
        $MaxResults,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = switch ($PSCmdlet.ParameterSetName) {
            Description {
                'DescribeStackInstance'
                $expand = 'StackInstance'
            }
            ListStackInstances {
                'ListStackInstances'
                $expand = 'Summaries'
            }
        }
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            if ($request.PSObject.Properties.Name -contains $key) {
                $request.$key = $PSBoundParameters[$key]
            }
        }
        $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request $expand
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