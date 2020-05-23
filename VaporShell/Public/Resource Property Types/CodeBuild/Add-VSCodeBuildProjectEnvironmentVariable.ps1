function Add-VSCodeBuildProjectEnvironmentVariable {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.EnvironmentVariable resource property to the template. EnvironmentVariable is a property of the AWS CodeBuild Project Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html property type that specifies the name and value of an environment variable for an AWS CodeBuild project environment. When you use the environment to run a build, these variables are available for your builds to use. EnvironmentVariable contains a list of EnvironmentVariable property types.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.EnvironmentVariable resource property to the template.
EnvironmentVariable is a property of the AWS CodeBuild Project Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html property type that specifies the name and value of an environment variable for an AWS CodeBuild project environment. When you use the environment to run a build, these variables are available for your builds to use. EnvironmentVariable contains a list of EnvironmentVariable property types.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html

    .PARAMETER Type
        The type of environment variable. Valid values include:
+  PARAMETER_STORE: An environment variable stored in Amazon EC2 Systems Manager Parameter Store. To learn how to specify a parameter store environment variable, see  parameter store reference-key in the buildspec file: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#parameter-store-build-spec.
+  PLAINTEXT: An environment variable in plain text format. This is the default value.
+  SECRETS_MANAGER: An environment variable stored in AWS Secrets Manager. To learn how to specify a secrets manager environment variable, see  secrets manager reference-key in the buildspec file: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#secrets-manager-build-spec.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Value
        The value of the environment variable.
We strongly discourage the use of PLAINTEXT environment variables to store sensitive values, especially AWS secret key IDs and secret access keys. PLAINTEXT environment variables can be displayed in plain text using the AWS CodeBuild console and the AWS Command Line Interface AWS CLI. For sensitive values, we recommend you use an environment variable of type PARAMETER_STORE or SECRETS_MANAGER.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-value
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Name
        The name or key of the environment variable.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-name
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.EnvironmentVariable')]
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
        $Type,
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
        $Value,
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.EnvironmentVariable'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
