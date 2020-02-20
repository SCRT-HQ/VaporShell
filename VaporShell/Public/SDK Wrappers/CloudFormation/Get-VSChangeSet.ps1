function Get-VSChangeSet {
    <#
    .SYNOPSIS
    Gets the list of change sets for a stack or describes a specific change set.

    .PARAMETER Description
    Switch to get a change set description.

    .PARAMETER List
    Switch to get the list of change sets for a specific stack.

    .PARAMETER ChangeSetName
    The name or ID of the change set that you are trying to describe.

    .PARAMETER StackName
    The name or ID of the stack that you are trying to get change set info for.

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
        [parameter(ParameterSetName = "ListChangeSets")]
        [Switch]
        $List,
        [parameter(Mandatory = $false,ParameterSetName = "Description")]
        [String]
        $ChangeSetName,
        [parameter(Mandatory = $true)]
        [String]
        $StackName,
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
                'DescribeChangeSet'
            }
            ListChangeSets {
                'ListChangeSets'
            }
        }
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            if ($request.PSObject.Properties.Name -contains $key) {
                $request.$key = $PSBoundParameters[$key]
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
