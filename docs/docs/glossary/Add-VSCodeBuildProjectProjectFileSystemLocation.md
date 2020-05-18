# Add-VSCodeBuildProjectProjectFileSystemLocation

## SYNOPSIS
Adds an AWS::CodeBuild::Project.ProjectFileSystemLocation resource property to the template.
Information about a file system created by Amazon Elastic File System (EFS.
For more information, see What Is Amazon Elastic File System?: https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html

## SYNTAX

```
Add-VSCodeBuildProjectProjectFileSystemLocation [-MountPoint] <Object> [-Type] <Object> [-Identifier] <Object>
 [[-MountOptions] <Object>] [-Location] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.ProjectFileSystemLocation resource property to the template.
Information about a file system created by Amazon Elastic File System (EFS.
For more information, see What Is Amazon Elastic File System?: https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html

## PARAMETERS

### -MountPoint
The location in the container where you mount the file system.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-mountpoint
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

### -Type
The type of the file system.
The one supported type is EFS.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-type
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

### -Identifier
The name used to access a file system created by Amazon EFS.
CodeBuild creates an environment variable by appending the identifier in all capital letters to CODEBUILD_.
For example, if you specify my-efs for identifier, a new environment variable is create named CODEBUILD_MY-EFS.
The identifier is used to mount your file system.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-identifier
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MountOptions
The mount options for a file system created by AWS EFS.
The default mount options used by CodeBuild are nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2.
For more information, see Recommended NFS Mount Options: https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-mountoptions
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

### -Location
A string that specifies the location of the file system created by Amazon EFS.
Its format is efs-dns-name:/directory-path.
You can find the DNS name of file system when you view it in the AWS EFS console.
The directory path is a path to a directory in the file system that CodeBuild mounts.
For example, if the DNS name of a file system is fs-abcd1234.efs.us-west-2.amazonaws.com, and its mount directory is my-efs-mount-directory, then the location is fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory.
The directory path in the format efs-dns-name:/directory-path is optional.
If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-location
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.ProjectFileSystemLocation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html)

