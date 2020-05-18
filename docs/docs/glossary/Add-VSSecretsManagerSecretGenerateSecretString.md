# Add-VSSecretsManagerSecretGenerateSecretString

## SYNOPSIS
Adds an AWS::SecretsManager::Secret.GenerateSecretString resource property to the template.
Use the GenerateSecretString property as part of the AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type to dynamically generate a random text string to use as a password.
You use this an alternative to hardcoding a password directly in the SecretString property.
When you generate a AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type, you must include one or the other, but not both.

## SYNTAX

```
Add-VSSecretsManagerSecretGenerateSecretString [[-ExcludeUppercase] <Object>]
 [[-RequireEachIncludedType] <Object>] [[-IncludeSpace] <Object>] [[-ExcludeCharacters] <Object>]
 [[-GenerateStringKey] <Object>] [[-PasswordLength] <Object>] [[-ExcludePunctuation] <Object>]
 [[-ExcludeLowercase] <Object>] [[-SecretStringTemplate] <Object>] [[-ExcludeNumbers] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SecretsManager::Secret.GenerateSecretString resource property to the template.
Use the GenerateSecretString property as part of the AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type to dynamically generate a random text string to use as a password.
You use this an alternative to hardcoding a password directly in the SecretString property.
When you generate a AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type, you must include one or the other, but not both.

SecretString enables you to place a literal value directly into the secret, an action not recommended.
Instead, we recommend that you use the GenerateSecretString property to dynamically generate a random password.
The operation returns a complete JSON structure to use as the secret value.
The structure begins with the string you supply using the SecretStringTemplate.
This template string must be a properly formatted JSON string that contains all of the secret value information except the password.
The operation then generates a random password using the rules specified by the other parameters.
Finally, the operations inserts the generated password into the secret value structure along with the JSON key name specified by the GenerateStringKey parameter.

For examples, see AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html.

## PARAMETERS

### -ExcludeUppercase
Specifies that the generated password should not include uppercase letters.
The default behavior is False, and the generated password can include uppercase letters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludeuppercase
PrimitiveType: Boolean
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

### -RequireEachIncludedType
Specifies whether the generated password must include at least one of every allowed character type.
By default, Secrets Manager enables this parameter, and the generated password includes at least one of every character type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-requireeachincludedtype
PrimitiveType: Boolean
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

### -IncludeSpace
Specifies that the generated password can include the space character.
By default, Secrets Manager disables this parameter, and the generated password doesn't include space

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-includespace
PrimitiveType: Boolean
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

### -ExcludeCharacters
A string that excludes characters in the generated password.
By default, all characters from the included sets can be used.
The string can be a minimum length of 0 characters and a maximum length of 7168 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludecharacters
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

### -GenerateStringKey
The JSON key name used to add the generated password to the JSON structure specified by the SecretStringTemplate parameter.
If you specify this parameter, then you must also specify SecretStringTemplate.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-generatestringkey
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

### -PasswordLength
The desired length of the generated password.
The default value if you do not include this parameter is 32 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-passwordlength
PrimitiveType: Integer
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

### -ExcludePunctuation
Specifies that the generated password should not include punctuation characters.
The default if you do not include this switch parameter is that punctuation characters can be included.
The following are the punctuation characters that *can* be included in the generated password if you don't explicitly exclude them with ExcludeCharacters or ExcludePunctuation:
!
" # $ % & '   * + , - .
/ : ; \< = \> ?
@   \] ^ _  { | } ~

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludepunctuation
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeLowercase
Specifies the generated password should not include lowercase letters.
By default, SEcrets Manager disables this parameter, and the generated password can include lowercase False, and the generated password can include lowercase letters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludelowercase
PrimitiveType: Boolean
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

### -SecretStringTemplate
A properly structured JSON string that the generated password can be added to.
If you specify this parameter, then you must also specify GenerateStringKey.
Secrets Manager combines this with the generated random string and inserts into the JSON structure specified by this parameter.
The merged JSON string returns as the completed SecretString of the secret.
By default, Secrets Manager does not return the generated random password string, and doesn't embed it in a JSON structure.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-secretstringtemplate
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeNumbers
Specifies that the generated password should exclude digits.
By default, Secrets Manager does not enable the parameter, False, and the generated password can include digits.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludenumbers
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SecretsManager.Secret.GenerateSecretString
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html)

