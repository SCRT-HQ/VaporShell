# Add-VSCodeBuildProjectProjectCache

## SYNOPSIS
Adds an AWS::CodeBuild::Project.ProjectCache resource property to the template.
ProjectCache is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies information about the cache for the build project.

## SYNTAX

```
Add-VSCodeBuildProjectProjectCache [[-Modes] <Object>] [-Type] <Object> [[-Location] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.ProjectCache resource property to the template.
ProjectCache is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies information about the cache for the build project.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Modes
If you use a LOCAL cache, the local cache mode.
You can use one or more local cache modes at the same time.
+  LOCAL_SOURCE_CACHE mode caches Git metadata for primary and secondary sources.
After the cache is created, subsequent builds pull only the change between commits.
This mode is a good choice for projects with a clean working directory and a source that is a large Git repository.
If you choose this option and your project does not use a Git repository GitHub, GitHub Enterprise, or Bitbucket, the option is ignored.
+  LOCAL_DOCKER_LAYER_CACHE mode caches existing Docker layers.
This mode is a good choice for projects that build or pull large Docker images.
It can prevent the performance issues caused by pulling large Docker images down from the network.
**Note**
You can use a Docker layer cache in the Linux environment only.
The privileged flag must be set so that your project has the required Docker permissions.
You should consider the security implications before you use a Docker layer cache.
+  LOCAL_CUSTOM_CACHE mode caches directories you specify in the buildspec file.
This mode is a good choice if your build scenario is not suited to one of the other three local cache modes.
If you use a custom cache:
+  Only directories can be specified for caching.
You cannot specify individual files.
+  Symlinks are used to reference cached directories.
+  Cached directories are linked to your build before it downloads its project sources.
Cached items are overriden if a source item has the same name.
Directories are specified using cache paths in the buildspec file.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-modes
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The type of cache used by the build project.
Valid values include:
+  NO_CACHE: The build project does not use any cache.
+  S3: The build project reads and writes from and to S3.
+  LOCAL: The build project stores a cache locally on a build host that is only available to that build host.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-type
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Information about the cache location:
+  NO_CACHE or LOCAL: This value is ignored.
+  S3: This is the S3 bucket name/prefix.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-location
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.ProjectCache
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html)

