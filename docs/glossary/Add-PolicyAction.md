# Add-PolicyAction

## SYNOPSIS
Adds a tab-completing Policy Action for an IAM policy document

## SYNTAX

### Custom (Default)
```
Add-PolicyAction [-Custom] <String[]> [<CommonParameters>]
```

### Action
```
Add-PolicyAction [-Action] <String[]> [<CommonParameters>]
```

## DESCRIPTION
Adds a tab-completing Policy Action for an IAM policy document

## EXAMPLES

### EXAMPLE 1
```
$policyDoc = [PSCustomObject]@{
    Version   = '2012-10-17'
    Statement = @(
        @{
            Effect   = 'Allow'
            Action   = @(
                Add-PolicyAction "ssm:*"
            )
            Resource = $documentArn
        }
    )
}
$newVSIAMPolicySplat = @{
    LogicalId      = "CloudWatchSSMRunCommandPolicy"
    PolicyName     = "CloudWatchSSMRunCommandPolicy"
    PolicyDocument = $policyDoc
}
$iamPolicy = New-VSIAMPolicy @newVSIAMPolicySplat
```

## PARAMETERS

### -Action
The tab-completing list of available actions.

```yaml
Type: String[]
Parameter Sets: Action
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Custom
Anything custom, i.e.
containing wildcards like s3:List*

```yaml
Type: String[]
Parameter Sets: Custom
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

## NOTES

## RELATED LINKS
