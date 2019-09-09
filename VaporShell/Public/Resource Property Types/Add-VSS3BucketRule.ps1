function Add-VSS3BucketRule {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.Rule resource property to the template. Specifies lifecycle rules for an Amazon S3 bucket. For more information, see PUT Bucket lifecycle: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlifecycle.html in the *Amazon Simple Storage Service API Reference*.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.Rule resource property to the template.
Specifies lifecycle rules for an Amazon S3 bucket. For more information, see PUT Bucket lifecycle: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlifecycle.html in the *Amazon Simple Storage Service API Reference*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html

    .PARAMETER AbortIncompleteMultipartUpload
        Specifies a lifecycle rule that aborts incomplete multipart uploads to an Amazon S3 bucket.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-abortincompletemultipartupload
        Type: AbortIncompleteMultipartUpload
        UpdateType: Mutable

    .PARAMETER ExpirationDate
        Indicates when objects are deleted from Amazon S3 and Amazon S3 Glacier. The date value must be in ISO 8601 format. The time is always midnight UTC. If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date. The expiration time must also be later than the transition time.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationdate
        PrimitiveType: Timestamp
        UpdateType: Mutable

    .PARAMETER ExpirationInDays
        Indicates the number of days after creation when objects are deleted from Amazon S3 and Amazon S3 Glacier. If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date. The expiration time must also be later than the transition time.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationindays
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Id
        Unique identifier for the rule. The value can't be longer than 255 characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-id
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER NoncurrentVersionExpirationInDays
        For buckets with versioning enabled or suspended, specifies the time, in days, between when a new version of the object is uploaded to the bucket and when old versions of the object expire. When object versions expire, Amazon S3 permanently deletes them. If you specify a transition and expiration time, the expiration time must be later than the transition time.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversionexpirationindays
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER NoncurrentVersionTransition
        Deprecated. For buckets with versioning enabled or suspended, specifies when non-current objects transition to a specified storage class. If you specify a transition and expiration time, the expiration time must be later than the transition time. If you specify this property, don't specify the NoncurrentVersionTransitions property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition
        Type: NoncurrentVersionTransition
        UpdateType: Mutable

    .PARAMETER NoncurrentVersionTransitions
        For buckets with versioning enabled or suspended, one or more transition rules that specify when non-current objects transition to a specified storage class. If you specify a transition and expiration time, the expiration time must be later than the transition time. If you specify this property, don't specify the NoncurrentVersionTransition property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransitions
        DuplicatesAllowed: False
        ItemType: NoncurrentVersionTransition
        Type: List
        UpdateType: Mutable

    .PARAMETER Prefix
        Object key prefix that identifies one or more objects to which this rule applies.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-prefix
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Status
        If Enabled, the rule is currently being applied. If Disabled, the rule is not currently being applied.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-status
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER TagFilters
        Tags to use to identify a subset of objects to which the lifecycle rule applies.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-tagfilters
        DuplicatesAllowed: False
        ItemType: TagFilter
        Type: List
        UpdateType: Mutable

    .PARAMETER Transition
        Deprecated. Specifies when an object transitions to a specified storage class. If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date. The expiration time must also be later than the transition time. If you specify this property, don't specify the Transitions property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transition
        Type: Transition
        UpdateType: Mutable

    .PARAMETER Transitions
        One or more transition rules that specify when an object transitions to a specified storage class. If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date. The expiration time must also be later than the transition time. If you specify this property, don't specify the Transition property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transitions
        DuplicatesAllowed: False
        ItemType: Transition
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.Rule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AbortIncompleteMultipartUpload,
        [parameter(Mandatory = $false)]
        $ExpirationDate,
        [parameter(Mandatory = $false)]
        [Int]
        $ExpirationInDays,
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
        $Id,
        [parameter(Mandatory = $false)]
        [Int]
        $NoncurrentVersionExpirationInDays,
        [parameter(Mandatory = $false)]
        $NoncurrentVersionTransition,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.S3.Bucket.NoncurrentVersionTransition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $NoncurrentVersionTransitions,
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
        $Prefix,
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
        $Status,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.S3.Bucket.TagFilter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TagFilters,
        [parameter(Mandatory = $false)]
        $Transition,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.S3.Bucket.Transition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Transitions
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.Rule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
