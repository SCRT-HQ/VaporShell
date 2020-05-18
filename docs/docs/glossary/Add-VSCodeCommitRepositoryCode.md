# Add-VSCodeCommitRepositoryCode

## SYNOPSIS
Adds an AWS::CodeCommit::Repository.Code resource property to the template.
Information about code to be committed.

## SYNTAX

```
Add-VSCodeCommitRepositoryCode [-S3] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeCommit::Repository.Code resource property to the template.
Information about code to be committed.

## PARAMETERS

### -S3
Information about the Amazon S3 bucket that contains a ZIP file of code to be committed to the repository.

Type: S3
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html#cfn-codecommit-repository-code-s3
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeCommit.Repository.Code
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html)

