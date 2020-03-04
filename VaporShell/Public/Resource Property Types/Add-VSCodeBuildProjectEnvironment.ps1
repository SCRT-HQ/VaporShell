function Add-VSCodeBuildProjectEnvironment {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.Environment resource property to the template. Environment is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the environment for an AWS CodeBuild project.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.Environment resource property to the template.
Environment is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the environment for an AWS CodeBuild project.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html

    .PARAMETER Type
        The type of build environment to use for related builds.
+ The environment type ARM_CONTAINER is available only in regions US East N. Virginia, US East Ohio, US West Oregon, EU Ireland, Asia Pacific Mumbai, Asia Pacific Tokyo, Asia Pacific Sydney, and EU Frankfurt.
+ The environment type LINUX_CONTAINER with compute type build.general1.2xlarge is available only in regions US East N. Virginia, US East Ohio, US West Oregon, Canada Central, EU Ireland, EU London, EU Frankfurt, Asia Pacific Tokyo, Asia Pacific Seoul, Asia Pacific Singapore, Asia Pacific Sydney, China Beijing, and China Ningxia.
+ The environment type LINUX_GPU_CONTAINER is available only in regions US East N. Virginia, US East Ohio, US West Oregon, Canada Central, EU Ireland, EU London, EU Frankfurt, Asia Pacific Tokyo, Asia Pacific Seoul, Asia Pacific Singapore, Asia Pacific Sydney , China Beijing, and China Ningxia.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER EnvironmentVariables
        A set of environment variables to make available to builds for this build project.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-environmentvariables
        ItemType: EnvironmentVariable
        UpdateType: Mutable

    .PARAMETER PrivilegedMode
        Enables running the Docker daemon inside a Docker container. Set to true only if the build project is used to build Docker images. Otherwise, a build that attempts to interact with the Docker daemon fails. The default setting is false.
You can initialize the Docker daemon during the install phase of your build by adding one of the following sets of commands to the install phase of your buildspec file:
If the operating system's base image is Ubuntu Linux:
- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&
- timeout 15 sh -c "until docker info; do echo .; sleep 1; done"
If the operating system's base image is Alpine Linux and the previous command does not work, add the -t argument to timeout:
- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&
- timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-privilegedmode
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ImagePullCredentialsType
        The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid values:
+  CODEBUILD specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.
+  SERVICE_ROLE specifies that AWS CodeBuild uses your build project's service role.
When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CODEBUILD credentials.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-imagepullcredentialstype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Image
        The image tag or image digest that identifies the Docker image to use for this build project. Use the following formats:
+ For an image tag: registry/repository:tag. For example, to specify an image with the tag "latest," use registry/repository:latest.
+ For an image digest: registry/repository@digest. For example, to specify an image with the digest "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf," use registry/repository@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-image
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER RegistryCredential
        RegistryCredential is a property of the AWS::CodeBuild::Project Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-environment property that specifies information about credentials that provide access to a private Docker registry. When this is set:
+  imagePullCredentialsType must be set to SERVICE_ROLE.
+  images cannot be curated or an Amazon ECR image.

        Type: RegistryCredential
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-registrycredential
        UpdateType: Mutable

    .PARAMETER ComputeType
        The type of compute environment. This determines the number of CPU cores and memory the build environment uses. Available values include:
+  BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for builds.
+  BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for builds.
+  BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for builds.
For more information, see Build Environment Compute Types: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html in the *AWS CodeBuild User Guide.*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-computetype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Certificate
        The certificate to use with this build project.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-certificate
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.Environment')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","ImagePullCredentialsType")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","ImagePullCredentialsType")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","RegistryCredential")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","RegistryCredential")]
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
                $allowedTypes = "Vaporshell.Resource.CodeBuild.Project.EnvironmentVariable"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EnvironmentVariables,
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
        $PrivilegedMode,
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
        $ImagePullCredentialsType,
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
        $Image,
        [parameter(Mandatory = $false)]
        $RegistryCredential,
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
        $ComputeType,
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
        $Certificate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.Environment'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
