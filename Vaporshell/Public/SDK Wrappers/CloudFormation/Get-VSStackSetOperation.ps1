function Get-VSStackSetOperation {
    [cmdletbinding(DefaultParameterSetName = "Description")]
    Param
    (
        [parameter(ParameterSetName = "Description")]
        [Switch]
        $Description,
        [parameter(ParameterSetName = "ListStackSetOperations")]
        [Switch]
        $List,
        [parameter(ParameterSetName = "ListStackSetOperationResults")]
        [Switch]
        $ListResults,
        [parameter(Mandatory = $true)]
        [String]
        $StackSetName,
        [parameter(ParameterSetName = "Description")]
        [parameter(ParameterSetName = "ListStackSetOperationResults")]
        [String]
        $OperationId,
        [parameter(ParameterSetName = "ListStackSetOperations")]
        [parameter(ParameterSetName = "ListStackSetOperationResults")]
        [System.Int32]
        $MaxResults,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = switch ($PSCmdlet.ParameterSetName) {
            Description {
                'DescribeStackSetOperation'
                $expand = 'StackSetOperation'
            }
            ListStackSetOperations {
                'ListStackSetOperations'
                $expand = 'Summaries'
            }
            ListStackSetOperationResults {
                'ListStackSetOperationResults'
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