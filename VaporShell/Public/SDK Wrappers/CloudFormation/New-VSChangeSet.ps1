function New-VSChangeSet {
    <#
    .SYNOPSIS
    Creates a new Change Set.

    .DESCRIPTION
    Creates a new Change Set for the specified StackName.

    .PARAMETER TemplateBody
    The body of the template to be used for this change set.

    .PARAMETER Path
    The path to the template file to be used with this change set.

    .PARAMETER TemplateUrl
    The S3 Url to the template file to be used with this change set.

    .PARAMETER UsePreviousTemplate
    A flag to indicate that this change set should use the previous template.

    .PARAMETER ChangeSetName
    The name of the change set. The name must be unique among all change sets that are associated with the specified stack. A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.

    .PARAMETER StackName
    The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.

    .PARAMETER Capabilities
    A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter. The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, and AWS::IAM::UserToGroupAddition. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary. If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an InsufficientCapabilities error.

    .PARAMETER ChangeSetType
    The type of change set operation. To create a change set for a new stack, specify CREATE. To create a change set for an existing stack, specify UPDATE.

    .PARAMETER ClientToken
    A unique identifier for this CreateChangeSet request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry CreateChangeSet requests to ensure that AWS CloudFormation successfully received them.

    .PARAMETER Description
    A description to help you identify this change set.

    .PARAMETER NotificationARNs
    The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.

    .PARAMETER Parameters
    A list of Parameter structures that specify input parameters for the change set

    .PARAMETER ResourceTypes
    The template resource types that you have permissions to work with if you execute this change set, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance. If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation.

    .PARAMETER RoleARN
    The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.

    .PARAMETER Tags
    Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.

    .PARAMETER Watch
    If $true, runs Watch-Stack to show the colorized output of the stack events.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .PARAMETER Force
    If $true, executes the change set as soon as it's ready.

    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding(DefaultParameterSetName = "Path")]
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
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "UsePreviousTemplate")]
        [Switch]
        $UsePreviousTemplate,
        [parameter(Mandatory = $true)]
        [Alias('StackId')]
        [String]
        $StackName,
        [parameter(Mandatory = $false)]
        [ValidateScript({
            if ($_.Length -gt 128 -or $_ -notmatch "^[a-zA-Z][-a-zA-Z0-9]+$") {
                throw "A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters."
            }
            else {
                $true
            }
        })]
        [String]
        $ChangeSetName,
        [parameter(Mandatory = $false)]
        [ValidateSet("CAPABILITY_IAM","CAPABILITY_NAMED_IAM")]
        [String[]]
        $Capabilities,
        [parameter(Mandatory = $false)]
        [Amazon.CloudFormation.ChangeSetType]
        $ChangeSetType,
        [parameter(Mandatory = $false)]
        [Alias('ClientToken')]
        [String]
        $ClientRequestToken,
        [parameter(Mandatory = $false)]
        [String]
        $Description,
        [parameter(Mandatory = $false)]
        [String[]]
        $NotificationARNs,
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
        [String[]]
        $ResourceTypes,
        [parameter(Mandatory = $false)]
        [String]
        $RoleARN,
        [parameter(Mandatory = $false)]
        [Hashtable]
        $Tags,
        [parameter(Mandatory = $false)]
        [switch]
        $Watch,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE,
        [parameter(Mandatory = $false)]
        [switch]
        $Force
    )
    Begin {
        Import-AWSSDK
        $tagList = New-Object 'System.Collections.Generic.List[Amazon.CloudFormation.Model.Tag]'
        $tagList.Add((VSStackTag -Key BuiltWith -Value VaporShell))
        if (-not $PSBoundParameters.ContainsKey('ChangeSetName')) {
            $ChangeSetName = "$StackName-$(Get-Date -Format "yyyy-MM-dd-HH-mm-ss")"
            $PSBoundParameters['ChangeSetName'] = $ChangeSetName
        }
    }
    Process {
        if ($PSBoundParameters.Keys -notcontains "Description") {
            $PSBoundParameters["Description"] = "Change set created with VaporShell on $((Get-Date).ToString()) by $env:USERNAME"
        }
        $method = "CreateChangeSet"
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                ClientRequestToken {
                    $request.ClientToken = $ClientRequestToken
                }
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
        $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request
        if (!$results) {
            return
        }
        elseif ($results -is 'System.Management.Automation.ErrorRecord') {
            $PSCmdlet.ThrowTerminatingError($results)
        }
        elseif ($results) {
            $results
            if ($Force) {
                $execParams = @{
                    ChangeSetName = $ChangeSetName
                    StackName = $StackName
                    ProfileName = $ProfileName
                }
                if ($PSBoundParameters.ContainsKey('ClientRequestToken')) {
                    $execParams['ClientRequestToken'] = $PSBoundParameters['ClientRequestToken']
                }
                Write-Verbose "Waiting until Change Set is ready..."
                $i = 0
                do {
                    Start-Sleep 2
                    $csStatus = Get-VSChangeSet -ChangeSetName $ChangeSetName -StackName $StackName -Verbose:$false
                    $i++
                }
                until ($csStatus.ExecutionStatus -eq 'AVAILABLE' -or $i -ge 150)
                Write-Verbose "Executing Change Set!"
                Invoke-VSChangeSetExecution @execParams
            }
            if ($Watch) {
                Write-Verbose "Watching Stack!"
                $results | Watch-Stack -ProfileName $ProfileName -Verbose:$false
            }
        }
    }
}
