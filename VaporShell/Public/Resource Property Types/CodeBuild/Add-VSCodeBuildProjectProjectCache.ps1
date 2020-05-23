function Add-VSCodeBuildProjectProjectCache {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.ProjectCache resource property to the template. ProjectCache is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies information about the cache for the build project. If ProjectCache is not specified, then both of its properties default to NO_CACHE.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.ProjectCache resource property to the template.
ProjectCache is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies information about the cache for the build project. If ProjectCache is not specified, then both of its properties default to NO_CACHE.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html

    .PARAMETER Modes
        If you use a LOCAL cache, the local cache mode. You can use one or more local cache modes at the same time.
+  LOCAL_SOURCE_CACHE mode caches Git metadata for primary and secondary sources. After the cache is created, subsequent builds pull only the change between commits. This mode is a good choice for projects with a clean working directory and a source that is a large Git repository. If you choose this option and your project does not use a Git repository GitHub, GitHub Enterprise, or Bitbucket, the option is ignored.
+  LOCAL_DOCKER_LAYER_CACHE mode caches existing Docker layers. This mode is a good choice for projects that build or pull large Docker images. It can prevent the performance issues caused by pulling large Docker images down from the network.
**Note**
You can use a Docker layer cache in the Linux environment only.
The privileged flag must be set so that your project has the required Docker permissions.
You should consider the security implications before you use a Docker layer cache.
+  LOCAL_CUSTOM_CACHE mode caches directories you specify in the buildspec file. This mode is a good choice if your build scenario is not suited to one of the other three local cache modes. If you use a custom cache:
+  Only directories can be specified for caching. You cannot specify individual files.
+  Symlinks are used to reference cached directories.
+  Cached directories are linked to your build before it downloads its project sources. Cached items are overridden if a source item has the same name. Directories are specified using cache paths in the buildspec file.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-modes
        UpdateType: Mutable

    .PARAMETER Type
        The type of cache used by the build project. Valid values include:
+  NO_CACHE: The build project does not use any cache.
+  S3: The build project reads and writes from and to S3.
+  LOCAL: The build project stores a cache locally on a build host that is only available to that build host.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Location
        Information about the cache location:
+  NO_CACHE or LOCAL: This value is ignored.
+  S3: This is the S3 bucket name/prefix.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-location
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.ProjectCache')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Modes,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.ProjectCache'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
