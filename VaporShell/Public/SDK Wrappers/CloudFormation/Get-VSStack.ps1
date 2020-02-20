function Get-VSStack {
    <#
    .SYNOPSIS
    Gets info about a stack or list of stacks

    .DESCRIPTION
    Gets the description, policy, template, event list, resource info, resource list, exports info, imports info, summary or even estimated cost of a particular stack. This can also be used to list your stacks.

    .PARAMETER Description
    Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created. If the stack does not exist, an AmazonCloudFormationException is returned.

    .PARAMETER List
    Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).

    .PARAMETER Policy
    Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.

    .PARAMETER Template
    Returns the template body for a specified stack. You can get the template for running or deleted stacks.

    .PARAMETER Events
    Returns all stack related events for a specified stack in reverse chronological order.

    .PARAMETER Resource
    Returns a description of the specified resource in the specified stack.

    .PARAMETER Resources
    Returns AWS resource descriptions for running and deleted stacks. If StackName is specified, all the associated resources that are part of the stack are returned. If PhysicalResourceId is specified, the associated resources of the stack that the resource belongs to are returned.

    .PARAMETER ResourceList
    Returns descriptions of all resources of the specified stack.

    .PARAMETER ExportList
    Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the Fn::ImportValue function.

    .PARAMETER ImportList
    Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.

    .PARAMETER Summary
    Returns information about a new or existing template. The GetTemplateSummary action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set. You can use the GetTemplateSummary action when you submit a template, or you can get template information for a stack set, or a running or deleted stack. For deleted stacks, GetTemplateSummary returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a ValidationError is returned.

    .PARAMETER EstimatedCost
    Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.

    .PARAMETER StackId
    The Stack ID or Stack Name of the stack you are trying to get info for.

    .PARAMETER LogicalResourceId
    The logical name of the resource as specified in the template.

    .PARAMETER PhysicalResourceId
    The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation. For example, for an Amazon Elastic Compute Cloud (EC2) instance, PhysicalResourceId corresponds to the InstanceId. You can pass the EC2 InstanceId to DescribeStackResources to find which stack the instance belongs to and what other resources are part of the stack.

    .PARAMETER StackSetName
    The name or unique ID of the stack set from which the stack was created.

    .PARAMETER ExportName
    The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value.

    .PARAMETER ChangeSetName
    The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation returns the associated template. If you specify a name, you must also specify the StackName.

    .PARAMETER TemplateStage
    For templates that include transforms, the stage of the template that AWS CloudFormation returns. To get the user-submitted template, specify Original. To get the template after AWS CloudFormation has processed all transforms, specify Processed. If the template doesn't include transforms, Original and Processed return the same template. By default, AWS CloudFormation specifies Original.

    .PARAMETER TemplateBody
    Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.

    .PARAMETER TemplateUrl
    Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket.

    .PARAMETER Path
    Absolute or relative file path to the template file you would like to summarize.

    .PARAMETER Parameters
    A list of Parameter structures that specify input parameters.

    .PARAMETER StackStatusFilter
    Stack status to use as a filter. Specify one or more stack status codes to list only stacks with the specified status codes. For a complete list of stack status codes, see the StackStatus parameter of the Stack data type.

    .PARAMETER Colorize
    Used with -Events to output colorized events.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .EXAMPLE
    # This gets the list of stacks.
    Get-VSStack -List

    .EXAMPLE
    # This gets the list of stacks and shows the events for each in color.
    Get-VSStack -List | Get-VSStack -Events -ColorizeEvents

    .EXAMPLE
    # This gets the description for a stack named 'testSAMdeployment'
    Get-VSStack -StackId testSAMdeployment

    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding(DefaultParameterSetName = "Description")]
    Param
    (
        [parameter(ParameterSetName = "Description")]
        [Switch]
        $Description,
        [parameter(ParameterSetName = "ListStacks")]
        [Switch]
        $List,
        [parameter(ParameterSetName = "Policy")]
        [Switch]
        $Policy,
        [parameter(ParameterSetName = "Template")]
        [Switch]
        $Template,
        [parameter(ParameterSetName = "Events")]
        [Switch]
        $Events,
        [parameter(ParameterSetName = "Resource")]
        [Switch]
        $Resource,
        [parameter(ParameterSetName = "ResourcesPhysicalId")]
        [parameter(ParameterSetName = "ResourcesStackId")]
        [Switch]
        $Resources,
        [parameter(ParameterSetName = "ResourceList")]
        [Switch]
        $ResourceList,
        [parameter(ParameterSetName = "ExportList")]
        [Switch]
        $ExportList,
        [parameter(ParameterSetName = "ImportList")]
        [Switch]
        $ImportList,
        [parameter(ParameterSetName = "SummaryPath")]
        [parameter(ParameterSetName = "SummaryBody")]
        [parameter(ParameterSetName = "SummaryUrl")]
        [Switch]
        $Summary,
        [parameter(ParameterSetName = "EstimatedCostBody")]
        [parameter(ParameterSetName = "EstimatedCostUrl")]
        [parameter(ParameterSetName = "EstimatedCostPath")]
        [Switch]
        $EstimatedCost,
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "Events")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "Description")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "Policy")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "Template")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "SummaryPath")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "SummaryBody")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "SummaryUrl")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "Resource")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "ResourcesStackId")]
        [parameter(ValueFromPipelineByPropertyName = $true,ParameterSetName = "ResourceList")]
        [Alias("StackName")]
        [String]
        $StackId,
        [parameter(ParameterSetName = "Resource")]
        [parameter(ParameterSetName = "ResourcesPhysicalId")]
        [parameter(ParameterSetName = "ResourcesStackId")]
        [String]
        $LogicalResourceId,
        [parameter(ParameterSetName = "ResourcesPhysicalId")]
        [String]
        $PhysicalResourceId,
        [parameter(ParameterSetName = "SummaryPath")]
        [parameter(ParameterSetName = "SummaryBody")]
        [parameter(ParameterSetName = "SummaryUrl")]
        [String]
        $StackSetName,
        [parameter(ParameterSetName = "ImportList")]
        [String]
        $ExportName,
        [parameter(ParameterSetName = "Template")]
        [String]
        $ChangeSetName,
        [parameter(ParameterSetName = "Template")]
        [ValidateSet("Original","Processed")]
        [String]
        $TemplateStage,
        [parameter(ValueFromPipeline = $true,ParameterSetName = "EstimatedCostBody")]
        [parameter(ParameterSetName = "SummaryBody")]
        [String]
        $TemplateBody,
        [parameter(ParameterSetName = "EstimatedCostUrl")]
        [parameter(ParameterSetName = "SummaryUrl")]
        [String]
        $TemplateUrl,
        [parameter(ParameterSetName = "EstimatedCostPath")]
        [parameter(ParameterSetName = "SummaryPath")]
        [ValidateScript( {Test-Path $_})]
        [String]
        $Path,
        [parameter(ParameterSetName = "EstimatedCostBody")]
        [parameter(ParameterSetName = "EstimatedCostUrl")]
        [parameter(ParameterSetName = "EstimatedCostPath")]
        [Amazon.CloudFormation.Model.Parameter[]]
        $Parameters,
        [parameter(ParameterSetName = "ListStacks")]
        [ValidateSet("CREATE_IN_PROGRESS","CREATE_FAILED","CREATE_COMPLETE","ROLLBACK_IN_PROGRESS","ROLLBACK_FAILED","ROLLBACK_COMPLETE","DELETE_IN_PROGRESS","DELETE_FAILED","DELETE_COMPLETE","UPDATE_IN_PROGRESS","UPDATE_COMPLETE_CLEANUP_IN_PROGRESS","UPDATE_COMPLETE","UPDATE_ROLLBACK_IN_PROGRESS","UPDATE_ROLLBACK_FAILED","UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS","UPDATE_ROLLBACK_COMPLETE","REVIEW_IN_PROGRESS")]
        [String]
        $StackStatusFilter,
        [parameter(ParameterSetName = "Events")]
        [Switch]
        $Colorize,
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
                'DescribeStacks'
                $expand = 'Stacks'
            }
            ListStacks {
                'ListStacks'
                $expand = 'StackSummaries'
            }
            Policy {
                'GetStackPolicy'
                $expand = 'StackPolicyBody'
            }
            Events {
                'DescribeStackEvents'
                $expand = 'StackEvents'
            }
            ResourceList {
                'ListStackResources'
            }
            ExportList {
                'ListExports'
            }
            ImportList {
                'ListImports'
            }
            Resource {
                'DescribeStackResource'
            }
            ResourcesPhysicalId {
                'DescribeStackResources'
            }
            ResourcesStackId {
                'DescribeStackResources'
            }
            EstimatedCostBody {
                'EstimateTemplateCost'
                $expand = 'Url'
            }
            EstimatedCostUrl {
                'EstimateTemplateCost'
                $expand = 'Url'
            }
            EstimatedCostPath {
                'EstimateTemplateCost'
                $expand = 'Url'
            }
            SummaryPath {
                'GetTemplateSummary'
            }
            SummaryBody {
                'GetTemplateSummary'
            }
            SummaryUrl {
                'GetTemplateSummary'
            }
            Template {
                'GetTemplate'
            }
        }
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                StackId {
                    $request.StackName = $StackId
                }
                TemplateStage {
                    $request.TemplateStage = [Amazon.CloudFormation.TemplateStage]::$TemplateStage
                }
                Path {
                    $request.TemplateBody = [System.IO.File]::ReadAllText((Resolve-Path $Path))
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
            Write-Error $results
        }
        elseif ($results) {
            if ($Colorize) {
                $strings = @()
                $strings += "`nSTACK ID : $($results.StackId[0])`n"
                $stack = $results | Sort-Object timestamp | Select-Object Timestamp,ResourceStatus,StackName,ResourceType,ResourceStatusReason | Format-Table -AutoSize
                $strings += ($stack | Out-String) -split "`n" | Where-Object {$_}
                Colorize $strings
            }
            else {
                return $results
            }
        }
    }
}
