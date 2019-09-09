# Add-VSCodeBuildProjectEnvironment

## SYNOPSIS
Adds an AWS::CodeBuild::Project.Environment resource property to the template.
Environment is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the environment for an AWS CodeBuild project.

## SYNTAX

```
Add-VSCodeBuildProjectEnvironment [-Type] <Object> [[-EnvironmentVariables] <Object>]
 [[-PrivilegedMode] <Boolean>] [[-ImagePullCredentialsType] <Object>] [-Image] <Object>
 [[-RegistryCredential] <Object>] [-ComputeType] <Object> [[-Certificate] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.Environment resource property to the template.
Environment is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the environment for an AWS CodeBuild project.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The type of build environment to use for related builds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-type
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnvironmentVariables
A set of environment variables to make available to builds for this build project.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-environmentvariables
ItemType: EnvironmentVariable
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivilegedMode
Indicates how the project builds Docker images.
Specify true to enable running the Docker daemon inside a Docker container.
This value must be set to true only if this build project will be used to build Docker images, and the specified build environment image is not one provided by AWS CodeBuild with Docker support.
Otherwise, all associated builds that attempt to interact with the Docker daemon fail.
For more information, see the  privilegedMode : https://docs.aws.amazon.com/codebuild/latest/userguide/create-project.html#create-project-cli field in the *AWS CodeBuild User Guide*.
You must also start the Docker daemon so that builds can interact with it.
One way to do this is to initialize the Docker daemon during the install phase of your build spec by running the following build commands.
Do not run these commands if the specified build environment image is provided by AWS CodeBuild with Docker support.
If the operating system's base image is Ubuntu Linux:
- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&
- timeout 15 sh -c "until docker info; do echo .; sleep 1; done"
If the operating system's base image is Alpine Linux, add the -t argument to timeout:
- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&
- timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-privilegedmode
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImagePullCredentialsType
The type of credentials AWS CodeBuild uses to pull images in your build.
There are two valid values:
+  CODEBUILD specifies that AWS CodeBuild uses its own credentials.
This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.
+  SERVICE_ROLE specifies that AWS CodeBuild uses your build project's service role.
When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials.
When you use an AWS CodeBuild curated image, you must use CODEBUILD credentials.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-imagepullcredentialstype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Image
The image tag or image digest that identifies the Docker image to use for this build project.
Use the following formats:
+ For an image tag: registry/repository:tag.
For example, to specify an image with the tag "latest," use registry/repository:latest.
+ For an image digest: registry/repository@digest.
For example, to specify an image with the digest "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf," use registry/repository@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-image
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RegistryCredential
RegistryCredential is a property of the AWS::CodeBuild::Project Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-environment property that specifies information about credentials that provide access to a private Docker registry.
When this is set:
+  imagePullCredentialsType must be set to SERVICE_ROLE.
+  images cannot be curated or an Amazon ECR image.

Type: RegistryCredential
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-registrycredential
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputeType
The type of compute environment.
This determines the number of CPU cores and memory the build environment uses.
Available values include:
+  BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for builds.
+  BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for builds.
+  BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for builds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-computetype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Certificate
The certificate to use with this build project.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-certificate
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.Environment
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html)

