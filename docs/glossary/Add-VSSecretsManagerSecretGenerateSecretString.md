# Add-VSSecretsManagerSecretGenerateSecretString

## SYNOPSIS
Adds an AWS::SecretsManager::Secret.GenerateSecretString resource property to the template.
Use the GenerateSecretStringproperty as part of the AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type to dynamically generate a random text string to use as a password.
It is an alternative to hardcoding a password directly in the SecretString property.
When you generate a AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type, you must include one or the other, but not both.

## SYNTAX

```
Add-VSSecretsManagerSecretGenerateSecretString [[-ExcludeUppercase] <Boolean>]
 [[-RequireEachIncludedType] <Boolean>] [[-IncludeSpace] <Boolean>] [[-ExcludeCharacters] <Object>]
 [[-GenerateStringKey] <Object>] [[-PasswordLength] <Int32>] [[-ExcludePunctuation] <Boolean>]
 [[-ExcludeLowercase] <Boolean>] [[-SecretStringTemplate] <Object>] [[-ExcludeNumbers] <Boolean>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SecretsManager::Secret.GenerateSecretString resource property to the template.
Use the GenerateSecretStringproperty as part of the AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type to dynamically generate a random text string to use as a password.
It is an alternative to hardcoding a password directly in the SecretString property.
When you generate a AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type, you must include one or the other, but not both.

SecretString enables you to place a literal value directly into the secret (a technique that we recommend you avoid.
Instead, we recommend that you use the GenerateSecretString property to dynamically generate a random password.
The operation returns a complete JSON structure to use as the secret value.
The structure begins with the string that you supply using the SecretStringTemplate.
This template string must be a properly formatted JSON string that contains all of the secret value information except the password.
The operation then generates a random password using the rules specified by the other parameters.
Finally, the operations inserts the generated password into the secret value structure along with the JSON key name that's specified by the GenerateStringKey parameter.

For examples, see AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ExcludeUppercase
Specifies that the generated password should not include uppercase letters.
The default if you do not include this switch parameter is False, and the generated password can include uppercase letters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludeuppercase
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireEachIncludedType
Specifies whether the generated password must include at least one of every allowed character type.
If you don't include this switch, the default value is True, and the generated password includes at least one of every character type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-requireeachincludedtype
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSpace
Specifies that the generated password can include the space character.
The default if you do not include this switch parameter is False, and the generated password doesn't include space characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-includespace
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

### -ExcludeCharacters
A string that includes characters that should not be included in the generated password.
The default is that all characters from the included sets can be used.
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
The JSON key name that's used to add the generated password to the JSON structure specified by the SecretStringTemplateparameter.
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
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
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
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeLowercase
Specifies that the generated password should not include lowercase letters.
The default if you don't include this switch parameter is False, and the generated password can include lowercase letters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludelowercase
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecretStringTemplate
A properly structured JSON string that the generated password can be added to.
If you specify this parameter, then you must also specify GenerateStringKey.
That key is combined with the generated random string and inserted into the JSON structure that's specified by this parameter.
The merged JSON string is returned as the completed SecretStringof the secret.
The default if you don't include this parameter is that the generated random password string is returned by itself, and isn't embeded in a JSON structure.

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
Specifies that the generated password should not include digits.
The default if you don't include this switch parameter is False, and the generated password can include digits.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludenumbers
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: False
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

