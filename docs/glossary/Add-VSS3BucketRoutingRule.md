# Add-VSS3BucketRoutingRule

## SYNOPSIS
Adds an AWS::S3::Bucket.RoutingRule resource property to the template.
Specifies the redirect behavior and when a redirect is applied.

## SYNTAX

```
Add-VSS3BucketRoutingRule [-RedirectRule] <Object> [[-RoutingRuleCondition] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.RoutingRule resource property to the template.
Specifies the redirect behavior and when a redirect is applied.

## PARAMETERS

### -RedirectRule
Container for redirect information.
You can redirect requests to another host, to another page, or with another protocol.
In the event of an error, you can specify a different error code to return.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-redirectrule
Type: RedirectRule
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

### -RoutingRuleCondition
A container for describing a condition that must be met for the specified redirect to apply.
For example, 1.
If request is for pages in the /docs folder, redirect to the /documents folder.
2.
If request results in HTTP error 4xx, redirect request to another host where you might process the error.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition
Type: RoutingRuleCondition
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.RoutingRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)

