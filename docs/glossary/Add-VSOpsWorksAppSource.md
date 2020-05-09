# Add-VSOpsWorksAppSource

## SYNOPSIS
Adds an AWS::OpsWorks::App.Source resource property to the template.
Contains the information required to retrieve an app or cookbook from a repository.
For more information, see Creating Apps: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html or Custom Recipes and Cookbooks: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html.

## SYNTAX

```
Add-VSOpsWorksAppSource [[-Password] <Object>] [[-Revision] <Object>] [[-SshKey] <Object>] [[-Type] <Object>]
 [[-Url] <Object>] [[-Username] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::App.Source resource property to the template.
Contains the information required to retrieve an app or cookbook from a repository.
For more information, see Creating Apps: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html or Custom Recipes and Cookbooks: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html.

## PARAMETERS

### -Password
When included in a request, the parameter depends on the repository type.
+ For Amazon S3 bundles, set Password to the appropriate IAM secret access key.
+ For HTTP bundles and Subversion repositories, set Password to the password.
For more information on how to safely handle IAM credentials, see https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html: https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html.
In responses, AWS OpsWorks Stacks returns *****FILTERED***** instead of the actual value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-pw
PrimitiveType: String
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

### -Revision
The application's version.
AWS OpsWorks Stacks enables you to easily deploy new versions of an application.
One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-revision
PrimitiveType: String
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

### -SshKey
The repository's SSH key.
For more information, see Using Git Repository SSH Keys: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploykeys.html in the *AWS OpsWorks User Guide*.
To pass in an SSH key as a parameter, see the following example:
"Parameters" : { "GitSSHKey" : { "Description" : "Change SSH key newlines to commas.", "Type" : "CommaDelimitedList", "NoEcho" : "true" }, ...
"CustomCookbooksSource": { "Revision" : { "Ref": "GitRevision"}, "SshKey" : { "Fn::Join" :  "n", { "Ref": "GitSSHKey"} \] }, "Type": "git", "Url": { "Ref": "GitURL"} } ...

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-sshkey
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

### -Type
The repository type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-type
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

### -Url
The source URL.
The following is an example of an Amazon S3 source URL: https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-url
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Username
This parameter depends on the repository type.
+ For Amazon S3 bundles, set Username to the appropriate IAM access key ID.
+ For HTTP bundles, Git repositories, and Subversion repositories, set Username to the user name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-username
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.OpsWorks.App.Source
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html)

