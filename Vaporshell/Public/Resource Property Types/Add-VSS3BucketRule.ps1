function Add-VSS3BucketRule {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.Rule resource property to the template

    .DESCRIPTION
        Adds an AWS::S3::Bucket.Rule resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html

    .PARAMETER ExpirationDate
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationdate    
		PrimitiveType: Timestamp    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ExpirationInDays
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationindays    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Id
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-id    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER NoncurrentVersionExpirationInDays
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversionexpirationindays    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER NoncurrentVersionTransition
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition    
		Required: False    
		Type: NoncurrentVersionTransition    
		UpdateType: Mutable    

    .PARAMETER NoncurrentVersionTransitions
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransitions    
		Required: False    
		Type: NoncurrentVersionTransition    
		UpdateType: Mutable    

    .PARAMETER Prefix
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-prefix    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Status
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-status    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER Transition
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transition    
		Required: False    
		Type: Transition    
		UpdateType: Mutable    

    .PARAMETER Transitions
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transitions    
		Required: False    
		Type: Transition    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.Rule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ExpirationDate,
        [parameter(Mandatory = $false)]
        [Int]
        $ExpirationInDays,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Id,
        [parameter(Mandatory = $false)]
        [Int]
        $NoncurrentVersionExpirationInDays,
        [parameter(Mandatory = $false)]
        $NoncurrentVersionTransition,
        [parameter(Mandatory = $false)]
        $NoncurrentVersionTransitions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Prefix,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Status,
        [parameter(Mandatory = $false)]
        $Transition,
        [parameter(Mandatory = $false)]
        $Transitions
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.Rule'
    }
}
