# Add-VSAmplifyDomainSubDomainSetting

## SYNOPSIS
Adds an AWS::Amplify::Domain.SubDomainSetting resource property to the template.
The SubDomainSetting property type allows you to connect a subdomain (e.g.
foo.yourdomain.com to a specific branch.

## SYNTAX

```
Add-VSAmplifyDomainSubDomainSetting [-Prefix] <Object> [-BranchName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Amplify::Domain.SubDomainSetting resource property to the template.
The SubDomainSetting property type allows you to connect a subdomain (e.g.
foo.yourdomain.com to a specific branch.

## PARAMETERS

### -Prefix
Prefix setting for the Subdomain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-prefix
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

### -BranchName
Branch name setting for the Subdomain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-branchname
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Amplify.Domain.SubDomainSetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html)

