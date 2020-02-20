function Update-VSStackSet {
    <#
    .SYNOPSIS
    Updates the stack set and all associated stack instances. Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.

    .PARAMETER TemplateBody
    The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes

    .PARAMETER Path
    The path to the local file containing the template.

    .PARAMETER TemplateUrl
    The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket.

    .PARAMETER UsePreviousTemplate
    Use the existing template that's associated with the stack set that you're updating.

    .PARAMETER Capabilities
    A list of values that you must specify before AWS CloudFormation can create certain stack sets. Some stack set templates might include resources that can affect permissions in your AWS accountâ€”for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter. The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::IAM::UserToGroupAddition.

    .PARAMETER Description
    A brief description of updates that you are making.

    .PARAMETER OperationId
    The unique ID for this stack set operation. The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, AWS CloudFormation generates one automatically. Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED.

    .PARAMETER OperationPreferences
    Preferences for how AWS CloudFormation performs this stack set operation.

    .PARAMETER Parameters
    A list of input parameters for the stack set template.

    .PARAMETER StackSetName
    The name or unique ID of the stack set that you want to update.

    .PARAMETER Tags
    The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. You can specify a maximum number of 50 tags. If you specify tags for this parameter, those tags replace any list of tags that are currently associated with this stack set. This means: If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. If you specify any tags using this parameter, you must specify all the tags that you want associated with this stack set, even tags you've specifed before (for example, when creating the stack set or during a previous update of the stack set.). Any tags that you don't include in the updated list of tags are removed from the stack set, and therefore from the stacks and resources as well. If you specify an empty value, AWS CloudFormation removes all currently associated tags. If you specify new tags as part of an UpdateStackSet action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you omit tags that are currently associated with the stack set from the list of tags you specify, AWS CloudFormation assumes that you want to remove those tags from the stack set, and checks to see if you have permission to untag resources. If you don't have the necessary permission(s), the entire UpdateStackSet action fails with an access denied error, and the stack set is not updated.

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
        $Description,
        [parameter(Mandatory = $false)]
        [String]
        $OperationId,
        [parameter(Mandatory = $false)]
        [Amazon.CloudFormation.Model.StackSetOperationPreferences]
        $OperationPreferences,
        [parameter(Mandatory = $false)]
        [Amazon.CloudFormation.Model.Parameter[]]
        $Parameters,
        [parameter(Mandatory = $false)]
        [String]
        $StackSetName,
        [parameter(Mandatory = $false)]
        [AllowNull()]
        [Hashtable]
        $Tags,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        Import-AWSSDK
    }
    Process {
        if ($PSBoundParameters.Keys -contains "Tags") {
            $PSBoundParameters["Tags"] += (VSStackTag BuiltWith VaporShell)
        }
        else {
            $PSBoundParameters["Tags"] = (VSStackTag BuiltWith VaporShell)
        }
        $method = "UpdateStackSet"
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
