function New-VSKMSKey {
    <#
    .SYNOPSIS
        Adds an AWS::KMS::Key resource to the template. The AWS::KMS::Key resource specifies a symmetric customer master key: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys (CMK in AWS Key Management Service (AWS KMS. You can use symmetric CMKs to encrypt and decrypt small amounts of data, but they are more commonly used to generate symmetric data keys and asymmetric data key pairs. You can also use symmetric CMKs to encrypt data stored in AWS services that are integrated with AWS KMS: http://aws.amazon.com/kms/features/#AWS_Service_Integration. For more information, see What is the AWS Key Management Service?: https://docs.aws.amazon.com/kms/latest/developerguide/overview.html in the *AWS Key Management Service Developer Guide*.

    .DESCRIPTION
        Adds an AWS::KMS::Key resource to the template. The AWS::KMS::Key resource specifies a symmetric customer master key: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys (CMK in AWS Key Management Service (AWS KMS. You can use symmetric CMKs to encrypt and decrypt small amounts of data, but they are more commonly used to generate symmetric data keys and asymmetric data key pairs. You can also use symmetric CMKs to encrypt data stored in AWS services that are integrated with AWS KMS: http://aws.amazon.com/kms/features/#AWS_Service_Integration. For more information, see What is the AWS Key Management Service?: https://docs.aws.amazon.com/kms/latest/developerguide/overview.html in the *AWS Key Management Service Developer Guide*.

**Note**

AWS KMS does not currently support creating asymmetric CMKs with a CloudFormation template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER Description
        A description of the CMK. Use a description that helps you to distinguish this CMK from others in the account, such as its intended use.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-description
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER EnableKeyRotation
        Enables automatic rotation of the key material for the specified customer master key CMK. By default, automation key rotation is not enabled.
When you enable automatic rotation, AWS KMS automatically creates new key material for the CMK 365 days after the enable or reenable date and every 365 days thereafter. AWS KMS retains all key material until you delete the CMK.
For detailed information about automatic key rotation, see Rotating Customer Master Keys: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html in the *AWS Key Management Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enablekeyrotation
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Enabled
        Specifies whether the customer master key CMK is enabled. Disabled CMKs cannot be used in cryptographic operations.
When Enabled is true, the *key state* of the CMK is Enabled. When Enabled is false, the key state of the CMK is Disabled. The default value is true.
The actual key state of the CMK might be affected by actions taken outside of CloudFormation, such as running the EnableKey: https://docs.aws.amazon.com/kms/latest/APIReference/API_EnableKey.html, DisableKey: https://docs.aws.amazon.com/kms/latest/APIReference/API_DisableKey.html, or ScheduleKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html operations.
For information about the key states of a CMK, see How Key State Affects Use of a Customer Master Key: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html in the *AWS Key Management Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER KeyPolicy
        The key policy that authorizes use of the CMK. The key policy must observe the following rules.
+ The key policy must allow the caller to make a subsequent PutKeyPolicy: https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html request on the CMK. This reduces the risk that the CMK becomes unmanageable. For more information, refer to the scenario in the Default Key Policy: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam section of the * *AWS Key Management Service Developer Guide* *.
+ Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal for example, an IAM user or role, you might need to enforce a delay before including the new principal in a key policy because the new principal might not be immediately visible to AWS KMS. For more information, see Changes that I make are not always immediately visible: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency in the *AWS Identity and Access Management User Guide*.
+ The key policy size limit is 32 kilobytes 32768 bytes.
If you are unsure of which policy to use, consider the *default key policy*. This is the key policy that AWS KMS applies to CMKs that are created by using the CreateKey API with no specified key policy. It gives the AWS account that owns the key permission to perform all operations on the key. It also allows you write IAM policies to authorize access to the key. For details, see Default Key Policy: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default in the *AWS Key Management Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keypolicy
        PrimitiveType: Json
        UpdateType: Mutable

    .PARAMETER KeyUsage
        Determines the cryptographic operations for which you can use the CMK. The default value, ENCRYPT_DECRYPT, is the only valid value for symmetric CMKs. You can't change the KeyUsage value after the CMK is created.
*Allowed Values*: ENCRYPT_DECRYPT

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyusage
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER PendingWindowInDays
        Specifies the number of days in the waiting period before AWS KMS deletes a CMK that has been removed from a CloudFormation stack. Enter a value between 7 and 30 days. The default value is 30 days.
When you remove a customer master key CMK from a CloudFormation stack, AWS KMS schedules the CMK for deletion and starts the mandatory waiting period. The PendingWindowInDays property determines the length of waiting period. During the waiting period, the key state of CMK is Pending Deletion, which prevents the CMK from being used in cryptographic operations. When the waiting period expires, AWS KMS permanently deletes the CMK.
You cannot use a CloudFormation template to cancel deletion of the CMK after you remove it from the stack, regardless of the waiting period. If you specify a CMK in your template, even one with the same name, CloudFormation creates a new CMK. To cancel deletion of a CMK, use the AWS KMS console or the CancelKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_CancelKeyDeletion.html operation.
For information about the PendingDeletion key state, see How Key State Affects Use of a Customer Master Key: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html in the *AWS Key Management Service Developer Guide*. For more information about deleting CMKs, see the ScheduleKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html operation in the *AWS Key Management Service API Reference* and Deleting Customer Master Keys: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html in the *AWS Key Management Service Developer Guide*.
*Minimum*: 7
*Maximum*: 30

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-pendingwindowindays
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Tags
        An array of key-value pairs to apply to this resource.
For more information, see Tag: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-tags
        DuplicatesAllowed: True
        ItemType: Tag
        Type: List
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
    [OutputType('Vaporshell.Resource.KMS.Key')]
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
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EnableKeyRotation,
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
        $Enabled,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KeyPolicy,
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
        $KeyUsage,
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
        $PendingWindowInDays,
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $false)]
        $Tags,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $DeletionPolicy,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $UpdateReplacePolicy,
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
            Type = "AWS::KMS::Key"
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
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
                }
                KeyPolicy {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KMS.Key'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
