function New-VSStackSet {
    <#
    .SYNOPSIS
    Creates a new Stack Set

    .PARAMETER TemplateBody
    Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.

    .PARAMETER Path
    File path to the local template file.

    .PARAMETER TemplateUrl
    Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket

    .PARAMETER StackSetName
    The name to associate with the stack set. The name must be unique in the region where you create your stack set. A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and can't be longer than 128 characters.

    .PARAMETER Capabilities
    A list of values that you must specify before AWS CloudFormation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter. The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, and AWS::IAM::UserToGroupAddition. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary. If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an InsufficientCapabilities error.

    .PARAMETER ClientRequestToken
    A unique identifier for this CreateStackSet request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another stack set with the same name. You might retry CreateStackSet requests to ensure that AWS CloudFormation successfully received them.
If you don't specify an operation ID, the SDK generates one automatically.

    .PARAMETER Description
    A description of the stack set. You can use the description to identify the stack set's purpose or other important information.

    .PARAMETER Parameters
    The input parameters for the stack set template.

    .PARAMETER Tags
    Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .FUNCTIONALITY
    Vaporshell
    #>
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
        [parameter(Mandatory = $true)]
        [String]
        $StackSetName,
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
        [Hashtable]
        $Tags,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        $tagList = New-Object 'System.Collections.Generic.List[Amazon.CloudFormation.Model.Tag]'
        $tagList.Add((VSStackTag -Key BuiltWith -Value VaporShell))
    }
    Process {
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
                Tags {
                    foreach ($key in $Tags.Keys) {
                        $tagList.Add((VSStackTag -Key $key -Value $Tags[$key]))
                    }
                }
                Default {
                    if ($request.PSObject.Properties.Name -contains $key) {
                        $request.$key = $PSBoundParameters[$key]
                    }
                }
            }
        }
        $request.Tags = $tagList
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
