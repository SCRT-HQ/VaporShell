function Update-VSStack {
    <#
    .SYNOPSIS
    Updates a Stack.

    .PARAMETER TemplateBody
    Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to Template Anatomy in the AWS CloudFormation User Guide.)

    .PARAMETER Path
    The path to the local file containing the stack template.

    .PARAMETER TemplateUrl
    Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket.

    .PARAMETER UsePreviousTemplate
    Reuse the existing template that is associated with the stack that you are updating.

    .PARAMETER Capabilities
    A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter. The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, and AWS::IAM::UserToGroupAddition.

    .PARAMETER ClientRequestToken
    A unique identifier for this UpdateStack request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to update a stack with the same name. You might retry UpdateStack requests to ensure that AWS CloudFormation successfully received them.

    .PARAMETER NotificationARNs
    Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack. Specify an empty list to remove all notification topics.

    .PARAMETER Parameters
    A list of Parameter structures that specify input parameters for the stack. For more information, see the Parameter data type.

    .PARAMETER ResourceTypes
    The template resource types that you have permissions to work with for this update stack action, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance. If the list of resource types doesn't include a resource that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies.

    .PARAMETER RoleARN
    The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to update the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.

    .PARAMETER StackName
    The name or unique stack ID of the stack to update.

    .PARAMETER StackPolicyBody
    Structure containing a new stack policy body. You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both. You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.

    .PARAMETER StackPolicyURL
    Location of a file containing the updated stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack.

    .PARAMETER StackPolicyDuringUpdateBody
    Structure containing the temporary overriding stack policy body.

    .PARAMETER StackPolicyDuringUpdateURL
    Location of a file containing the temporary overriding stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack.

    .PARAMETER Tags
    A hashtable containing key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 50 tags. If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. If you specify an empty value, AWS CloudFormation removes all associated tags.

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
        [parameter(Mandatory = $true,ParameterSetName = "UsePreviousTemplate")]
        [Switch]
        $UsePreviousTemplate,
        [parameter(Mandatory = $false)]
        [ValidateSet("CAPABILITY_IAM","CAPABILITY_NAMED_IAM")]
        [String[]]
        $Capabilities,
        [parameter(Mandatory = $false)]
        [String]
        $ClientRequestToken,
        [parameter(Mandatory = $false)]
        [String[]]
        $NotificationARNs,
        [parameter(Mandatory = $false)]
        [Amazon.CloudFormation.Model.Parameter[]]
        $Parameters,
        [parameter(Mandatory = $false)]
        [String[]]
        $ResourceTypes,
        [parameter(Mandatory = $false)]
        [String]
        $RoleARN,
        [parameter(Mandatory = $false)]
        [String]
        $StackName,
        [parameter(Mandatory = $false)]
        [String]
        $StackPolicyBody,
        [parameter(Mandatory = $false)]
        [String]
        $StackPolicyURL,
        [parameter(Mandatory = $false)]
        [String]
        $StackPolicyDuringUpdateBody,
        [parameter(Mandatory = $false)]
        [String]
        $StackPolicyDuringUpdateURL,
        [parameter(Mandatory = $false)]
        [AllowNull()]
        [Hashtable]
        $Tags,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "UpdateStack"
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                Path {
                    $resolvedPath = (Resolve-Path $Path).Path
                    $request.TemplateBody = [System.IO.File]::ReadAllText($resolvedPath)
                }
                Tags {
                    $tagList = New-Object 'System.Collections.Generic.List[Amazon.CloudFormation.Model.Tag]'
                    $tagList.Add((VSStackTag -Key BuiltWith -Value VaporShell))
                    if ($null -ne $Tags) {
                        foreach ($key in $Tags.Keys) {
                            $tagList.Add((VSStackTag -Key $key -Value $Tags[$key]))
                        }
                    }
                    $request.Tags = $tagList
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
