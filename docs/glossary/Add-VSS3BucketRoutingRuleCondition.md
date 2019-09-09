# Add-VSS3BucketRoutingRuleCondition

## SYNOPSIS
Adds an AWS::S3::Bucket.RoutingRuleCondition resource property to the template.
Specifies a condition that must be met for a redirect to apply.

## SYNTAX

```
Add-VSS3BucketRoutingRuleCondition [[-HttpErrorCodeReturnedEquals] <Object>] [[-KeyPrefixEquals] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.RoutingRuleCondition resource property to the template.
Specifies a condition that must be met for a redirect to apply.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -HttpErrorCodeReturnedEquals
The HTTP error code when the redirect is applied.
In the event of an error, if the error code equals this value, then the specified redirect is applied.
Required when parent element Condition is specified and sibling KeyPrefixEquals is not specified.
If both are specified, then both must be true for the redirect to be applied.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition-httperrorcodereturnedequals
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

### -KeyPrefixEquals
The object key name prefix when the redirect is applied.
For example, to redirect requests for ExamplePage.html, the key prefix will be ExamplePage.html.
To redirect request for all pages with the prefix docs/, the key prefix will be /docs, which identifies all objects in the docs/ folder.
Required when the parent element Condition is specified and sibling HttpErrorCodeReturnedEquals is not specified.
If both conditions are specified, both must be true for the redirect to be applied.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition-keyprefixequals
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.RoutingRuleCondition
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html)

