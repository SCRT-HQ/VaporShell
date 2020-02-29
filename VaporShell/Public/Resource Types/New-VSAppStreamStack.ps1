function New-VSAppStreamStack {
    <#
    .SYNOPSIS
        Adds an AWS::AppStream::Stack resource to the template. The AWS::AppStream::Stack resource creates a stack to start streaming applications to Amazon AppStream 2.0 users. A stack consists of an associated fleet, user access policies, and storage configurations.

    .DESCRIPTION
        Adds an AWS::AppStream::Stack resource to the template. The AWS::AppStream::Stack resource creates a stack to start streaming applications to Amazon AppStream 2.0 users. A stack consists of an associated fleet, user access policies, and storage configurations.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER Description
        The description to display.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-description
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER StorageConnectors
        The storage connectors to enable.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-storageconnectors
        ItemType: StorageConnector
        UpdateType: Mutable

    .PARAMETER DeleteStorageConnectors
        *This parameter has been deprecated. *
Deletes the storage connectors currently enabled for the stack.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-deletestorageconnectors
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER EmbedHostDomains
        +  CreateStack: https://docs.aws.amazon.com/appstream2/latest/APIReference/API_CreateStack.html in the *Amazon AppStream 2.0 API Reference*

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-embedhostdomains
        UpdateType: Mutable

    .PARAMETER UserSettings
        The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-usersettings
        ItemType: UserSetting
        UpdateType: Mutable

    .PARAMETER AttributesToDelete
        The stack attributes to delete.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-attributestodelete
        UpdateType: Mutable

    .PARAMETER RedirectURL
        The URL that users are redirected to after their streaming session ends.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-redirecturl
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Name
        The name of the stack.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-name
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER FeedbackURL
        The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-feedbackurl
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ApplicationSettings
        The persistent application settings for users of the stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.

        Type: ApplicationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-applicationsettings
        UpdateType: Mutable

    .PARAMETER DisplayName
        The stack name to display.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-displayname
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Tags
        An array of key-value pairs. For more information, see Using Cost Allocation Tags: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html in the *AWS Billing and Cost Management User Guide*.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-tags
        ItemType: Tag
        UpdateType: Mutable

    .PARAMETER AccessEndpoints
        +  CreateStack: https://docs.aws.amazon.com/appstream2/latest/APIReference/API_CreateStack.html in the *Amazon AppStream 2.0 API Reference*

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-accessendpoints
        ItemType: AccessEndpoint
        UpdateType: Mutable

    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

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
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppStream.Stack')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Description,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppStream.Stack.StorageConnector"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StorageConnectors,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DeleteStorageConnectors,
        [parameter(Mandatory = $false)]
        $EmbedHostDomains,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppStream.Stack.UserSetting"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UserSettings,
        [parameter(Mandatory = $false)]
        $AttributesToDelete,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RedirectURL,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FeedbackURL,
        [parameter(Mandatory = $false)]
        $ApplicationSettings,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DisplayName,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Tag","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tags,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppStream.Stack.AccessEndpoint"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AccessEndpoints,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $DeletionPolicy,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $DependsOn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "The UpdatePolicy parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Metadata,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UpdatePolicy,
        [parameter(Mandatory = $false)]
        $Condition
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::AppStream::Stack"
        }
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                LogicalId {}
                DeletionPolicy {
                    $ResourceParams.Add("DeletionPolicy",$DeletionPolicy)
                }
                DependsOn {
                    $ResourceParams.Add("DependsOn",$DependsOn)
                }
                Metadata {
                    $ResourceParams.Add("Metadata",$Metadata)
                }
                UpdatePolicy {
                    $ResourceParams.Add("UpdatePolicy",$UpdatePolicy)
                }
                Condition {
                    $ResourceParams.Add("Condition",$Condition)
                }
                StorageConnectors {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name StorageConnectors -Value @($StorageConnectors)
                }
                EmbedHostDomains {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name EmbedHostDomains -Value @($EmbedHostDomains)
                }
                UserSettings {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name UserSettings -Value @($UserSettings)
                }
                AttributesToDelete {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name AttributesToDelete -Value @($AttributesToDelete)
                }
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
                }
                AccessEndpoints {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name AccessEndpoints -Value @($AccessEndpoints)
                }
                Default {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters[$key]
                }
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppStream.Stack'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
