function Set-VSStackPolicy {
    <#
    .SYNOPSIS
    Sets the Stack Policy.
    
    .PARAMETER StackName
    The name or unique stack ID that you want to associate a policy with.
    
    .PARAMETER StackPolicyBody
    Structure containing the stack policy body.
    
    .PARAMETER Path
    Path to the local Stack Policy file
    
    .PARAMETER StackPolicyURL
    Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. 

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.
    
    .FUNCTIONALITY
    Vaporshell
    #>
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