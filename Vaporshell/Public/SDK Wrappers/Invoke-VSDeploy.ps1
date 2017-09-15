function Invoke-VSDeploy {
    <#
    .SYNOPSIS
    Creates a change set then executes it
    
    .DESCRIPTION
    Invokes a change set in CloudFormation. If the stack name already exists, it updates that stack. If it does not, it creates a new stack.
    
    .PARAMETER TemplateBody
    A JSON or YAML string containing the template body.
    
    .PARAMETER TemplateFile
    The path to the local file containing the template.
    
    .PARAMETER StackName
    The name of the AWS CloudFormation stack you're deploying to. If you specify an existing stack, the command updates the stack. If you specify a new stack, the command creates it.
    
    .PARAMETER Parameters
    A hashtable of key-value parameters that specify input parameters for your stack template. If you're updating a stack and you don't specify a parameter, the command uses the stack's existing value. For new stacks, you must specify parameters that don't have a default value.
    
    .PARAMETER Capabilities
    A list of capabilities that you must specify before AWS Cloudformation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter. The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM
    
    .PARAMETER DoNotExecute
    Indicates whether to execute the change set. Specify this flag if you want to view your stack changes before executing the change set. The command creates an AWS CloudFormation change set and then exits without executing the change set. After you view the change set, execute it to implement your changes.
    
    .PARAMETER RoleARN
    The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set.
    
    .PARAMETER NotificationARNs
    Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack.
    
    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.
    
    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding(DefaultParameterSetName = "TemplateFile")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateBody",ValueFromPipeline = $true)]
        [String]
        $TemplateBody,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateFile")]
        [ValidateScript({
                Test-Path $_
            })]
        [String]
        $TemplateFile,
        [parameter(Mandatory = $true,Position = 1)]
        [String]
        $StackName,
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
        [Alias("ParameterOverrides")]
        $Parameters,
        [parameter(Mandatory = $false)]
        [ValidateSet("CAPABILITY_IAM","CAPABILITY_NAMED_IAM")]
        [String[]]
        $Capabilities,
        [parameter(Mandatory = $false)]
        [Alias("NoExecuteChangeSet")]
        [Switch]
        $DoNotExecute,
        [parameter(Mandatory = $false)]
        [System.String]
        $RoleARN,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $NotificationARNs,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        $changeSetParams = @{}
        $prof = @{}
        if ($ProfileName -and ($PSBoundParameters.Keys -notcontains "ProfileName")) {
            $PSBoundParameters["ProfileName"] = $ProfileName
        }
        if ($ProfileName) {
            $prof["ProfileName"] = $ProfileName
        }
    }
    Process {
        if ($PSCmdlet.ParameterSetName -eq "TemplateFile") {
            Write-Verbose "Getting TemplateBody from TemplateFile path"
            $templateFilePath = (Resolve-Path $TemplateFile).Path
            $TemplateBody = [System.IO.File]::ReadAllText($templateFilePath)
        }
        $changeSetParams["TemplateBody"] = $TemplateBody
        $changeSetParams["ChangeSetName"] = "$($StackName)-$(Get-Date -Format "yyyyMMdd-HHmmss")"
        foreach ($key in $PSBoundParameters.Keys) {
            if ((Get-Command New-VSChangeSet).Parameters.Keys -contains $key) {
                $changeSetParams[$key] = $PSBoundParameters[$key]
            }
        }
        try {
            Write-Verbose "Creating change set as UPDATE"
            $changeSet = New-VSChangeSet @changeSetParams
            Write-Verbose "Change Set type 'UPDATE' created"
        }
        catch {
            try {
                $changeSet = New-VSChangeSet @changeSetParams -ChangeSetType CREATE
                Write-Verbose "Change Set type 'CREATE' created"
            }
            catch {
                $PSCmdlet.ThrowTerminatingError($_)
            }
        }
        $changeSetDetails = Get-VSChangeSet -Description -ChangeSetName $changeSet.Id -StackName $changeSet.StackId @prof
        if ($DoNotExecute) {
            return $changeSetDetails
        }
        else {
            $i=0
            Write-Host -ForegroundColor Magenta "Waiting for change set to be available." -NoNewline
            do {
                $i++
                Start-Sleep 1
                Write-Host -ForegroundColor Magenta "." -NoNewline
                $changeSetDetails = Get-VSChangeSet -Description -ChangeSetName $changeSet.Id -StackName $changeSet.StackId -Verbose:$false @prof
            }
            until ($changeSetDetails.ExecutionStatus.Value -eq "AVAILABLE" -or $changeSetDetails.Status.Value -eq "FAILED" -or $i -ge 60)
            Write-Host ""
            if ($changeSetDetails.Status.Value -eq "FAILED") {
                Write-Warning "Change Set FAILED! Reason: $($changeSetDetails.StatusReason)"
            }
            elseif ($i -ge 60) {
                Write-Warning "Change Set is not showing as available to execute after 60 seconds! Returning details"
                return $changeSetDetails
            }
            else {
                Write-Verbose "Executing Change Set after $i seconds"
                try {
                    $execution = Invoke-VSChangeSetExecution -ChangeSetName $changeSetDetails.ChangeSetId -StackName $changeSetDetails.StackId @prof
                    return $changeSetDetails | Select-Object *,@{N="ExecutionResponse";E={$execution}}
                }
                catch {
                    $PSCmdlet.ThrowTerminatingError($_)
                }
            }
        }
    }
}