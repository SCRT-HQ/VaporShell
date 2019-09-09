# Add-VSGreengrassResourceDefinitionVersionSecretsManagerSecretResourceData

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinitionVersion.SecretsManagerSecretResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-description"\>\</a\>Settings for a secret resource, which references a secret from AWS Secrets Manager.
AWS IoT Greengrass stores a local, encrypted copy of the secret on the Greengrass core, where it can be securely accessed by connectors and Lambda functions.
For more information, see Deploy Secrets to the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/secrets.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionVersionSecretsManagerSecretResourceData [-ARN] <Object>
 [[-AdditionalStagingLabelsToDownload] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinitionVersion.SecretsManagerSecretResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-description"\>\</a\>Settings for a secret resource, which references a secret from AWS Secrets Manager.
AWS IoT Greengrass stores a local, encrypted copy of the secret on the Greengrass core, where it can be securely accessed by connectors and Lambda functions.
For more information, see Deploy Secrets to the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/secrets.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-inheritance"\>\</a\> In an AWS CloudFormation template, SecretsManagerSecretResourceData can be used in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ARN
The Amazon Resource Name ARN of the Secrets Manager secret to make available on the core.
The value of the secret's latest version represented by the AWSCURRENT staging label is included by default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-arn
PrimitiveType: String
UpdateType: Immutable

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

### -AdditionalStagingLabelsToDownload
The staging labels whose values you want to make available on the core, in addition to AWSCURRENT.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-additionalstaginglabelstodownload
UpdateType: Immutable

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

### Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.SecretsManagerSecretResourceData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html)

