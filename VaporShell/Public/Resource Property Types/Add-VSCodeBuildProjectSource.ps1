function Add-VSCodeBuildProjectSource {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.Source resource property to the template. Source is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the source code settings for the project, such as the source code's repository type and location.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.Source resource property to the template.
Source is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the source code settings for the project, such as the source code's repository type and location.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html

    .PARAMETER Type
        The type of repository that contains the source code to be built. Valid values include:
+  BITBUCKET: The source code is in a Bitbucket repository.
+  CODECOMMIT: The source code is in an AWS CodeCommit repository.
+  CODEPIPELINE: The source code settings are specified in the source action of a pipeline in AWS CodePipeline.
+  GITHUB: The source code is in a GitHub repository.
+  GITHUB_ENTERPRISE: The source code is in a GitHub Enterprise repository.
+  NO_SOURCE: The project does not have input source code.
+  S3: The source code is in an Amazon Simple Storage Service Amazon S3 input bucket.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ReportBuildStatus
        Set to true to report the status of a build's start and finish to your source provider. This option is valid only when your source provider is GitHub, GitHub Enterprise, or Bitbucket. If this is set and you use a different source provider, an invalidInputException is thrown.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-reportbuildstatus
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Auth
        Information about the authorization settings for AWS CodeBuild to access the source code to be built.
This information is for the AWS CodeBuild console's use only. Your code should not get or set Auth directly.

        Type: SourceAuth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-auth
        UpdateType: Mutable

    .PARAMETER SourceIdentifier
        An identifier for this project source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-sourceidentifier
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER BuildSpec
        The build specification for the project. If this value is not provided, then the source code must contain a buildspec file named buildspec.yml at the root level. If this value is provided, it can be either a single string containing the entire build specification, or the path to an alternate buildspec file relative to the value of the built-in environment variable CODEBUILD_SRC_DIR. The alternate buildspec file can have a name other than buildspec.yml, for example myspec.yml or build_spec_qa.yml or similar. For more information, see the Build Spec Reference: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-example in the *AWS CodeBuild User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildspec
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER GitCloneDepth
        The depth of history to download. Minimum value is 0. If this value is 0, greater than 25, or not provided, then the full history is downloaded with each build project. If your source type is Amazon S3, this value is not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitclonedepth
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER GitSubmodulesConfig
        Information about the Git submodules configuration for the build project.

        Type: GitSubmodulesConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitsubmodulesconfig
        UpdateType: Mutable

    .PARAMETER InsecureSsl
        This is used with GitHub Enterprise only. Set to true to ignore SSL warnings while connecting to your GitHub Enterprise project repository. The default value is false. InsecureSsl should be used for testing purposes only. It should not be used in a production environment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-insecuressl
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Location
        Information about the location of the source code to be built. Valid values include:
+ For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, location should not be specified. If it is specified, AWS CodePipeline ignores it. This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.
+ For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the build spec for example, https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name .
+ For source code in an Amazon Simple Storage Service Amazon S3 input bucket, one of the following.
+  The path to the ZIP file that contains the source code for example,  bucket-name/path/to/object-name.zip.
+  The path to the folder that contains the source code for example,  bucket-name/path/to/source-code/folder/.
+ For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the build spec. You must connect your AWS account to your GitHub account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect or reconnect with GitHub, on the GitHub **Authorize application** page, for **Organization access**, choose **Request access** next to each repository you want to allow AWS CodeBuild to have access to, and then choose **Authorize application**. After you have connected to your GitHub account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console. To instruct AWS CodeBuild to use this connection, in the source object, set the auth object's type value to OAUTH.
+ For source code in a Bitbucket repository, the HTTPS clone URL to the repository that contains the source and the build spec. You must connect your AWS account to your Bitbucket account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect or reconnect with Bitbucket, on the Bitbucket **Confirm access to your account** page, choose **Grant access**. After you have connected to your Bitbucket account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console. To instruct AWS CodeBuild to use this connection, in the source object, set the auth object's type value to OAUTH.
If you specify CODEPIPELINE for the Type property, don't specify this property. For all of the other types, you must specify Location.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-location
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.Source')]
    [cmdletbinding()]
    Param
    (
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
        $Type,
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
        $ReportBuildStatus,
        [parameter(Mandatory = $false)]
        $Auth,
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
        $SourceIdentifier,
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
        $BuildSpec,
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
        $GitCloneDepth,
        [parameter(Mandatory = $false)]
        $GitSubmodulesConfig,
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
        $InsecureSsl,
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
        $Location
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.Source'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
