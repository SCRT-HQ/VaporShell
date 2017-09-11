function Get-TemplateValidation {
    [cmdletbinding(DefaultParameterSetName = "Path")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateBody", ValueFromPipeline = $true)]
        [String]
        $TemplateBody,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "Path")]
        [ValidateScript( {Test-Path $_})]
        [String]
        $Path,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateUrl")]
        [String]
        $TemplateUrl,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "ValidateTemplate"
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        switch ($PSCmdlet.ParameterSetName) {
            Path {
                $resolvedPath = (Resolve-Path $Path).Path
                $request.TemplateBody = [System.IO.File]::ReadAllText($resolvedPath)
            }
            TemplateBody {
                $request.TemplateBody = $TemplateBody
            }
            TemplateUrl {
                $request.TemplateUrl = $TemplateUrl
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