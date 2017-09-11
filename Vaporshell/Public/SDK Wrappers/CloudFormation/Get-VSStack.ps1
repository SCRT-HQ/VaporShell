function Get-VSStack {
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
        $ColorizeEvents,
        [parameter(ParameterSetName = "Events")]
        [Switch]
        $IncludeStopNotice,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
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
            $PSCmdlet.ThrowTerminatingError($results)
        }
        elseif ($results) {
            if ($ColorizeEvents) {
                $_colorParams = @{}
                if ($results.StackId[0]) {
                    $_colorParams["StackId"] = $results.StackId[0]
                }
                if ($IncludeStopNotice) {
                    $_colorParams["IncludeStopNotice"] = $true
                }
                ColorizeStackEvents $results @_colorParams
            }
            else {
                return $results
            }
        }
    }
}