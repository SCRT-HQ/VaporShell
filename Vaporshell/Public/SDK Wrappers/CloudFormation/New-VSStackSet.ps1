function New-VSStackSet {
    [cmdletbinding(DefaultParameterSetName = "Path",SupportsShouldProcess = $true,ConfirmImpact = "High")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateBody",ValueFromPipeline = $true)]
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
        [ValidateSet("CAPABILITY_IAM","CAPABILITY_NAMED_IAM")]
        [String[]]
        $Capabilities,
        [parameter(Mandatory = $false)]
        [String]
        $ClientRequestToken,
        [parameter(Mandatory = $false)]
        [String]
        $Description,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Management.Automation.PSCustomObject","Amazon.CloudFormation.Model.Parameter","System.Collections.Hashtable"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Parameters,
        [parameter(Mandatory = $false)]
        [String]
        $StackSetName,
        [parameter(Mandatory = $false)]
        [String]
        $Tags,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        if ($PSBoundParameters.Keys -contains "Tags") {
            $PSBoundParameters["Tags"] += (VSStackTag BuiltWith VaporShell)
        }
        else {
            $PSBoundParameters["Tags"] = (VSStackTag BuiltWith VaporShell)
        }
        if ($PSBoundParameters.Keys -notcontains "Description") {
            $PSBoundParameters["Description"] = "Stack set created with VaporShell on $((Get-Date).ToString()) by $env:USERNAME"
        }
        $method = "CreateStackSet"
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                Path {
                    $request.TemplateBody = [System.IO.File]::ReadAllText((Resolve-Path $Path))
                }
                Parameters {
                    if ($Parameters[0] -is [Amazon.CloudFormation.Model.Parameter]) {
                        $request.Parameters = $Parameters
                    }
                    elseif ($Parameters -is [System.Collections.Hashtable]) {
                        $parRay = @()
                        foreach ($parKey in $Parameters.Keys) {
                            $parRay += VSStackParameter -ParameterKey $parKey -ParameterValue $Parameters[$parKey]
                        }
                        $request.Parameters = $parRay
                    }
                    elseif ($Parameters -is [System.Management.Automation.PSCustomObject]) {
                        $parRay = @()
                        foreach ($parProp in $Parameters.PSObject.Properties.Name) {
                            $parRay += VSStackParameter -ParameterKey $parProp -ParameterValue $Parameters.$parProp
                        }
                        $request.Parameters = $parRay
                    }
                }
                Default {
                    if ($request.PSObject.Properties.Name -contains $key) {
                        $request.$key = $PSBoundParameters[$key]
                    }
                }
            }
        }
        if ($PSCmdlet.ShouldProcess($request)) {
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
}