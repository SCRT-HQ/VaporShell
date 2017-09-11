function VSDeploy {
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
            $changeSet = New-VSChangeSet @changeSetParams @prof
        }
        catch {
            try {
                $changeSet = New-VSChangeSet @changeSetParams -ChangeSetType CREATE @prof
            }
            catch {
                Write-Error $_
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
                $changeSetDetails = Get-VSChangeSet -Description -ChangeSetName $changeSet.Id -StackName $changeSet.StackId @prof -Verbose:$false
            }
            until ($changeSetDetails.ExecutionStatus.Value -eq "AVAILABLE" -or $i -ge 60)
            Write-Host ""
            if ($changeSetDetails.ExecutionStatus.Value -ne "AVAILABLE") {
                Write-Warning "Change Set is not showing as available to execute after 60 seconds! Returning details"
                return $changeSetDetails
            }
            else {
                Write-Verbose "Executing Change Set after $i seconds"
                Invoke-VSChangeSetExecution -ChangeSetName $changeSetDetails.ChangeSetId -StackName $changeSetDetails.StackId @prof
            }
        }
    }
}