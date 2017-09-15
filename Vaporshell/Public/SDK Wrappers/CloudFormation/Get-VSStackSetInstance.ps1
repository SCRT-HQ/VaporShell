function Get-VSStackSetInstance {
    <#
    .SYNOPSIS
    Gets information about an Instance of a Stack Set
    
    .DESCRIPTION
    Gets information about an Instance of a Stack Set
    
    .PARAMETER Description
    Returns the stack instance that's associated with the specified stack set, AWS account, and region.
    
    .PARAMETER List
    Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or region.
    
    .PARAMETER StackInstanceAccount
    The name of the AWS account that you want to list stack instances for.
    
    .PARAMETER StackInstanceRegion
    The name of the region where you want to list stack instances.
    
    .PARAMETER StackSetName
    The name or unique ID of the stack set that you want to list stack instances for.
    
    .PARAMETER MaxResults
    The maximum number of results to be returned with a single call.
    
    .PARAMETER Status
    The status of the stack sets that you want to get summary information about.
    
    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.
    
    .FUNCTIONALITY
    Vaporshell
    #>
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