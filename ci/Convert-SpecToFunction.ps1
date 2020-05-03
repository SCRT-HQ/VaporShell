function Convert-SpecToFunction {
    [cmdletbinding()]
    Param (
        [parameter(Mandatory = $true,Position = 0)]
        [Object]
        $Resource,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateSet("Resource","Property")]
        [String]
        $ResourceType
    )
    $ModPath = (Resolve-Path "$PSScriptRoot\..\VaporShell").Path
    $folder = "$($ModPath)\Public"
    $Name = $Resource.Name
    $Link = $Resource.Value.Documentation
    $HelpDoc = New-CFNHelpDoc @PSBoundParameters
    $Properties = $Resource.Value.Properties.PSObject.Properties
    $ShortName = $Name.Replace("AWS::","")
    $BaseTypeName = "Vaporshell.Resource." + ($ShortName -replace "\..*").Replace("::",".")
    $TypeName = "Vaporshell.Resource." + $ShortName.Replace("::",".")
    switch ($ResourceType) {
        Resource {
            $Dir = "$folder\Resource Types"
            $FunctionName = "New-VS" + ($ShortName -replace "\..*").Replace("::","")
            $Synopsis = "Adds an $Name resource to the template. $($HelpDoc.Synopsis)"
            $Description = "Adds an $Name resource to the template. $($HelpDoc.Description)"
        }
        Property {
            $Dir = "$folder\Resource Property Types"
            $FunctionName = "Add-VS" + $ShortName.Replace("::","").Replace(".","")
            $Synopsis = "Adds an $Name resource property to the template. $($HelpDoc.Synopsis)"
            $Description = "Adds an $Name resource property to the template.`n$($HelpDoc.Description)"
        }
    }
    $PS1Path = "$Dir\$FunctionName.ps1"
    $scriptContents = @()
    $scriptContents += @"
function $FunctionName {
    <#
    .SYNOPSIS
        $Synopsis

    .DESCRIPTION
        $Description

    .LINK
        $Link

"@
    if ($ResourceType -ne "Property") {
        $scriptContents += @"
    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.`n
"@
    }

    foreach ($Prop in $Properties) {
        $scriptContents += @"
    .PARAMETER $($Prop.Name)
"@
        if ($parameterDescription = $HelpDoc.Parameters | Where-Object {$_.Name -eq $Prop.Name} | Select-Object -ExpandProperty Description) {
            $scriptContents += "        $parameterDescription`n"
        }
        $pList = $Prop.Value.PSObject.Properties | Where-Object {$_.Name -ne 'Required'}
        foreach ($p in $pList) {
            $scriptContents += "        $($p.Name): $($p.Value)"
        }
        $scriptContents += ""
    }

    if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
        $scriptContents += @"
    .PARAMETER CreationPolicy
        Use the CreationPolicy attribute when you want to wait on resource configuration actions before stack creation proceeds. For example, if you install and configure software applications on an EC2 instance, you might want those applications to be running before proceeding. In such cases, you can add a CreationPolicy attribute to the instance, and then send a success signal to the instance after the applications are installed and configured.

        You must use the "Add-CreationPolicy" function here.`n
"@
    }

    if ($ResourceType -ne "Property") {
        $scriptContents += @"
    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"

    .PARAMETER UpdateReplacePolicy
        Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

        When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters. If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update. Recreating the resource generates a new physical ID. AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource. By default, AWS CloudFormation then deletes the old resource. Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

        For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

        You can apply the UpdateReplacePolicy attribute to any resource. UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID. For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one. The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance. The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference. For more information on resource update behavior, see Update Behaviors of Stack Resources.

        The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

        Note
        Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources. Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots. UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

        UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates. Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

        You must use one of the following options: "Delete","Retain","Snapshot"

    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.


    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.


    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
"@

        if ($Name -ne 'AWS::Events::EventBusPolicy') {
            $scriptContents += @"
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.`n
"@
        }
    }
    $scriptContents += @"
    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('$TypeName')]
    [cmdletbinding()]
"@
    if ($passProps = $Properties.Name | Where-Object { $_ -like "*Password*" -or $_ -like "*Credential*" }) {
        foreach ($pProp in $passProps) {
            $scriptContents += @"
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","$pProp")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","$pProp")]
"@
        }
    }
    $scriptContents += @"
    Param
    (
"@
    if ($ResourceType -ne "Property") {
        $scriptContents += @"
        [parameter(Mandatory = `$true,Position = 0)]
        [ValidateScript( {
                if (`$_ -match "^[a-zA-Z0-9]*$") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        `$LogicalId,
"@
    }
    $PCount = 0
    $Properties | ForEach-Object { $PCount++ }
    $i = 0
    foreach ($Prop in $Properties) {
        $i++
        if ($ResourceType -ne "Property") {
            $ParamName = "$($Prop.Name),"
        }
        elseif ($i -lt [int]$PCount) {
            $ParamName = "$($Prop.Name),"
        }
        else {
            $ParamName = "$($Prop.Name)"
        }
        if ($Prop.Value.Required -eq "True") {
            $Mandatory = '$true'
        }
        else {
            $Mandatory = '$false'
        }
        if ($Prop.Value.ItemType) {
            if ($Prop.Value.ItemType -eq "Tag") {
                $scriptContents += @"
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $Mandatory)]
        `$$ParamName
"@
            }
            else {
                $ValTypeName = "$($BaseTypeName).$($Prop.Value.ItemType)"
                $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "$ValTypeName"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName
"@
            }
        }
        elseif ($Prop.Name -eq "UserData") {
            $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "Vaporshell.Function.Base64","Vaporshell.Resource.UserData"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName
"@
        }
        elseif ($Prop.Value.Type -eq "Map") {
            $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [System.Collections.Hashtable]
        `$$ParamName
"@
        }
        elseif ($Prop.Value.PrimitiveType -eq "Integer" -or $Prop.Value.PrimitiveType -eq "Number") {
            $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName
"@
        }
        elseif ($Prop.Value.PrimitiveType -eq "Double") {
            $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "System.Double","Vaporshell.Function"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName
"@
        }
        elseif ($Prop.Value.PrimitiveType -eq "Boolean") {
            $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName
"@
        }
        elseif ($Prop.Value.PrimitiveType -eq "Json") {
            $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName
"@
        }
        elseif ($Prop.Value.PrimitiveType -eq "String") {
            if ($ParamName -eq "LoggingLevel") {
                $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateSet("OFF","ERROR","INFO")]
        `$$ParamName
"@
            }
            elseif ($FunctionName -eq 'Add-VSLambdaFunctionCode' -and $ParamName -eq 'ZipFile') {
                $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName,
        [parameter(Mandatory = `$false)]
        [ValidateScript({Test-Path `$_})]
        `$ZipFilePath
"@
            }
            else {
                $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$$ParamName
"@
            }
        }
        else {
            $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        `$$ParamName
"@
        }
    }
    if ($ResourceType -ne "Property") {
        if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
            $scriptContents += @"
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "Vaporshell.Resource.CreationPolicy"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$CreationPolicy,
"@
        }
        $scriptContents += @"
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        `$DeletionPolicy,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        `$UpdateReplacePolicy,
        [parameter(Mandatory = `$false)]
        [System.String[]]
        `$DependsOn,
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "System.Management.Automation.PSCustomObject"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "The UpdatePolicy parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
"@
        if ($Name -ne 'AWS::Events::EventBusPolicy') {
            $scriptContents += @"
        `$Metadata,
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$UpdatePolicy,
        [parameter(Mandatory = `$false)]
        `$Condition
"@
        }
        else {
            $scriptContents += @"
        `$Metadata
"@
        }
        $scriptContents += @"
    )
    Begin {
        `$ResourceParams = @{
            LogicalId = `$LogicalId
            Type = "$Name"
        }
        `$commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach (`$key in `$PSBoundParameters.Keys | Where-Object {`$commonParams -notcontains `$_}) {
            switch (`$key) {
                LogicalId {}
"@
        if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
            $scriptContents += @"
                CreationPolicy {
                    `$ResourceParams.Add("CreationPolicy",`$CreationPolicy)
                }
"@
        }
        $scriptContents += @"
                DeletionPolicy {
                    `$ResourceParams.Add("DeletionPolicy",`$DeletionPolicy)
                }
                UpdateReplacePolicy {
                    `$ResourceParams.Add("UpdateReplacePolicy",`$UpdateReplacePolicy)
                }
                DependsOn {
                    `$ResourceParams.Add("DependsOn",`$DependsOn)
                }
                Metadata {
                    `$ResourceParams.Add("Metadata",`$Metadata)
                }
                UpdatePolicy {
                    `$ResourceParams.Add("UpdatePolicy",`$UpdatePolicy)
                }
                Condition {
                    `$ResourceParams.Add("Condition",`$Condition)
                }
"@
        foreach ($Prop in $Properties | Where-Object { $_.Value.Type -eq "List" }) {
            $scriptContents += @"
                $($Prop.Name) {
                    if (!(`$ResourceParams["Properties"])) {
                        `$ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    `$ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $($Prop.Name) -Value @(`$$($Prop.Name))
                }
"@
        }
        foreach ($Prop in $Properties | Where-Object { $_.Value.PrimitiveType -eq "Json" }) {
            $scriptContents += @"
                $($Prop.Name) {
                    if ((`$PSBoundParameters[`$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            `$JSONObject = (ConvertFrom-Json -InputObject `$PSBoundParameters[`$key] -ErrorAction Stop)
                        }
                        catch {
                            `$PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '`$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        `$JSONObject = ([PSCustomObject]`$PSBoundParameters[`$key])
                    }
                    if (!(`$ResourceParams["Properties"])) {
                        `$ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    `$ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name `$key -Value `$JSONObject
                }
"@
        }
        $scriptContents += @"
                Default {
                    if (!(`$ResourceParams["Properties"])) {
                        `$ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    `$ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name `$key -Value `$PSBoundParameters[`$key]
                }
            }
        }
    }
    End {
        `$obj = New-VaporResource @ResourceParams
        `$obj | Add-ObjectDetail -TypeName '$TypeName'
        Write-Verbose "Resulting JSON from `$(`$MyInvocation.MyCommand): ``n``n`$(@{`$obj.LogicalId = `$obj.Props} | ConvertTo-Json -Depth 5)``n"
    }
}
"@
    }
    else {
        $scriptContents += @"
    )
    Begin {
        `$obj = [PSCustomObject]@{}
        `$commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach (`$key in `$PSBoundParameters.Keys | Where-Object {`$commonParams -notcontains `$_}) {
            switch (`$key) {
"@
        foreach ($Prop in $Properties | Where-Object { $_.Value.PrimitiveType -eq "Json" }) {
            $scriptContents += @"
                $($Prop.Name) {
                    if ((`$PSBoundParameters[`$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            `$JSONObject = (ConvertFrom-Json -InputObject `$PSBoundParameters[`$key] -ErrorAction Stop)
                        }
                        catch {
                            `$PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '`$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        `$JSONObject = ([PSCustomObject]`$PSBoundParameters[`$key])
                    }
                    `$obj | Add-Member -MemberType NoteProperty -Name `$key -Value `$JSONObject
                }
"@
        }
        if ($FunctionName -eq 'Add-VSLambdaFunctionCode') {
            $scriptContents += @"
                ZipFilePath {
                    `$obj | Add-Member -MemberType NoteProperty -Name 'ZipFile' -Value ([System.IO.File]::ReadAllText(`$ZipFilePath))
                }
"@
        }
        $scriptContents += @"
                Default {
                    `$obj | Add-Member -MemberType NoteProperty -Name `$key -Value `$PSBoundParameters.`$key
                }
            }
        }
    }
    End {
        `$obj | Add-ObjectDetail -TypeName '$TypeName'
        Write-Verbose "Resulting JSON from `$(`$MyInvocation.MyCommand): ``n``n`$(`$obj | ConvertTo-Json -Depth 5)``n"
    }
}
"@
    }
    Set-Content -Value $scriptContents -Path $PS1Path -Encoding UTF8 -Force
}
