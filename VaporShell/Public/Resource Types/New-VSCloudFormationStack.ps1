function New-VSCloudFormationStack {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFormation::Stack resource to the template. The AWS::CloudFormation::Stack type nests a stack as a resource in a top-level template.

    .DESCRIPTION
        Adds an AWS::CloudFormation::Stack resource to the template. The AWS::CloudFormation::Stack type nests a stack as a resource in a top-level template.

You can add output values from a nested stack within the containing template. You use the GetAtt: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html function with the nested stack's logical name and the name of the output value in the nested stack in the format Outputs.NestedStackOutputName.

**Important**

We strongly recommend that updates to nested stacks are run from the parent stack.

When you apply template changes to update a top-level stack, CloudFormation updates the top-level stack and initiates an update to its nested stacks. CloudFormation updates the resources of modified nested stacks, but does not update the resources of unmodified nested stacks. For more information, see CloudFormation Stacks Updates: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html.

**Note**

You must acknowledge IAM capabilities for nested stacks that contain IAM resources. Also, verify that you have cancel update stack permissions, which is required if an update rolls back. For more information about IAM and CloudFormation, see Controlling Access with AWS Identity and Access Management: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER NotificationARNs
        The Simple Notification Service SNS topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface CLI.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-notificationarns
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER Parameters
        The set value pairs that represent the parameters passed to CloudFormation when this nested stack is created. Each parameter has a name corresponding to a parameter defined in the embedded template and a value representing the value that you want to set for the parameter.
If you use the Ref function to pass a parameter value to a nested stack, comma-delimited list parameters must be of type String. In other words, you cannot pass values that are of type CommaDelimitedList to nested stacks.
Conditional. Required if the nested stack requires input parameters.
Whether an update causes interruptions depends on the resources that are being updated. An update never causes a nested stack to be replaced.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-parameters
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Mutable

    .PARAMETER Tags
        Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-tags
        DuplicatesAllowed: True
        ItemType: Tag
        Type: List
        UpdateType: Mutable

    .PARAMETER TemplateURL
        Location of file containing the template body. The URL must point to a template max size: 460,800 bytes that is located in an Amazon S3 bucket. For more information, see Template Anatomy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html.
Whether an update causes interruptions depends on the resources that are being updated. An update never causes a nested stack to be replaced.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-templateurl
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER TimeoutInMinutes
        The length of time, in minutes, that CloudFormation waits for the nested stack to reach the CREATE_COMPLETE state. The default is no timeout. When CloudFormation detects that the nested stack has reached the CREATE_COMPLETE state, it marks the nested stack resource as CREATE_COMPLETE in the parent stack and resumes creating the parent stack. If the timeout period expires before the nested stack reaches CREATE_COMPLETE, CloudFormation marks the nested stack as failed and rolls back both the nested stack and parent stack.
Updates are not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-timeoutinminutes
        PrimitiveType: Integer
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
    [OutputType('Vaporshell.Resource.CloudFormation.Stack')]
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
        $NotificationARNs,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Parameters,
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
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TemplateURL,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TimeoutInMinutes,
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
            Type = "AWS::CloudFormation::Stack"
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
                NotificationARNs {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name NotificationARNs -Value @($NotificationARNs)
                }
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFormation.Stack'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
