function Get-VSStackSet {
    <#
    .SYNOPSIS
    Gets information about a Stack Set

    .DESCRIPTION
    Gets information about a Stack Set

    .PARAMETER Description
    Returns the description of the specified stack set.

    .PARAMETER List
    Returns summary information about stack sets that are associated with the user.

    .PARAMETER StackSetName
    The name or the unique stack ID of the stack set that you want to get information for.

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
        [parameter(ParameterSetName = "ListStackSets")]
        [Switch]
        $List,
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
    Begin {
        Import-AWSSDK
    }
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
