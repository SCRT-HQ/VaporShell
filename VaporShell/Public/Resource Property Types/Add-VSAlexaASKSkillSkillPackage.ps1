function Add-VSAlexaASKSkillSkillPackage {
    <#
    .SYNOPSIS
        Adds an Alexa::ASK::Skill.SkillPackage resource property to the template. The SkillPackage property type contains configuration details for the skill package that contains the components of the Alexa skill. Skill packages are retrieved from an Amazon S3 bucket and key and used to create and update the skill. More details about the skill package format are located in the Skill Package API Reference: https://developer.amazon.com/docs/smapi/skill-package-api-reference.html#skill-package-format.

    .DESCRIPTION
        Adds an Alexa::ASK::Skill.SkillPackage resource property to the template.
The SkillPackage property type contains configuration details for the skill package that contains the components of the Alexa skill. Skill packages are retrieved from an Amazon S3 bucket and key and used to create and update the skill. More details about the skill package format are located in the Skill Package API Reference: https://developer.amazon.com/docs/smapi/skill-package-api-reference.html#skill-package-format.

SkillPackage is a property of the Alexa::ASK::Skill resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html

    .PARAMETER S3BucketRole
        ARN of the role that grants the Alexa service permission to access the bucket and retrieve the skill package. This role is optional. If you do not provide it, the bucket must be publicly accessible or configured with a policy that allows this access. Otherwise, AWS CloudFormation cannot create the skill.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucketrole
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER S3ObjectVersion
        If you have S3 versioning enabled, the version ID of the skill package.zip file.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3objectversion
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER S3Bucket
        The name of the Amazon S3 bucket where the .zip file that contains the skill package is stored.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucket
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER S3Key
        The location and name of the skill package .zip file.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3key
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Overrides
        Overrides to the skill package to apply when creating or updating the skill. Values provided here do not modify the contents of the original skill package. Currently, only overriding values inside of the skill manifest component of the package is supported.

        Type: Overrides
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-overrides
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Alexa.ASK.Skill.SkillPackage')]
    [cmdletbinding()]
    Param
    (
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
        $S3BucketRole,
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
        $S3ObjectVersion,
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
        $S3Bucket,
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
        $S3Key,
        [parameter(Mandatory = $false)]
        $Overrides
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Alexa.ASK.Skill.SkillPackage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
