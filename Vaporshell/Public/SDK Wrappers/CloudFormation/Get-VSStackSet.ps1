function Get-VSStackSet {
    [cmdletbinding(DefaultParameterSetName = "Description")]
    Param
    (
        [parameter(ParameterSetName = "Description")]
        [Switch]
        $Description,
        [parameter(ParameterSetName = "ListStackSets")]
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
        [parameter(ParameterSetName = "ListStackSets")]
        [System.Int32]
        $MaxResults,
        [parameter(ParameterSetName = "ListStackSets")]
        [ValidateSet("ACTIVE","DELETED")]
        [String]
        $Status,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = switch ($PSCmdlet.ParameterSetName) {
            Description {
                'DescribeStackSet'
                $expand = 'StackSet'
            }
            ListStackSets {
                'ListStackSets'
                $expand = 'Summaries'
            }
        }
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                Status {
                    $request.Status = [Amazon.CloudFormation.StackSetStatus]::$Status
                }
                Default {
                    if ($request.PSObject.Properties.Name -contains $key) {
                        $request.$key = $PSBoundParameters[$key]
                    }
                }
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