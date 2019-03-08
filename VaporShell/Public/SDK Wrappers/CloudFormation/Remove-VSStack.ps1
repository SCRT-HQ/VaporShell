function Remove-VSStack {
    <#
    .SYNOPSIS
    Removes a Stack.

    .PARAMETER StackName
    The name or the unique stack ID that is associated with the stack.

    .PARAMETER ClientRequestToken
    A unique identifier for this DeleteStack request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to delete a stack with the same name. You might retry DeleteStack requests to ensure that AWS CloudFormation successfully received them.

    .PARAMETER RetainResources
    For stacks in the DELETE_FAILED state, a list of resource logical IDs that are associated with the resources you want to retain. During deletion, AWS CloudFormation deletes the stack but does not delete the retained resources. Retaining resources is useful when you cannot delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.

    .PARAMETER RoleARN
    The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to delete the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.

    .PARAMETER Watch
    If $true, runs Watch-Stack to show the colorized output of the stack events.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding(SupportsShouldProcess = $true,ConfirmImpact = "High")]
    Param
    (
        [parameter(Mandatory = $true,ValueFromPipelineByPropertyName = $true)]
        [Alias("StackId")]
        [String]
        $StackName,
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
        [switch]
        $Watch,
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
                if ($Watch) {
                    Write-Verbose "Watching Stack!"
                    Watch-Stack -StackName $StackName -ProfileName $ProfileName -Verbose:$false
                }
            }
            elseif ($results -is 'System.Management.Automation.ErrorRecord') {
                $PSCmdlet.ThrowTerminatingError($results)
            }
            elseif ($results) {
                $results
                if ($Watch) {
                    Write-Verbose "Watching Stack!"
                    Watch-Stack -StackName $StackName -ProfileName $ProfileName -Verbose:$false
                }
            }
        }
    }
}
