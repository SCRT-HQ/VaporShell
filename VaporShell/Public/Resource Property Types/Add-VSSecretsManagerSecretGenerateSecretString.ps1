function Add-VSSecretsManagerSecretGenerateSecretString {
    <#
    .SYNOPSIS
        Adds an AWS::SecretsManager::Secret.GenerateSecretString resource property to the template. Use the GenerateSecretStringproperty as part of the AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type to dynamically generate a random text string to use as a password. It is an alternative to hardcoding a password directly in the SecretString property. When you generate a AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type, you must include one or the other, but not both.

    .DESCRIPTION
        Adds an AWS::SecretsManager::Secret.GenerateSecretString resource property to the template.
Use the GenerateSecretStringproperty as part of the AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type to dynamically generate a random text string to use as a password. It is an alternative to hardcoding a password directly in the SecretString property. When you generate a AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html resource type, you must include one or the other, but not both.

SecretString enables you to place a literal value directly into the secret (a technique that we recommend you avoid. Instead, we recommend that you use the GenerateSecretString property to dynamically generate a random password. The operation returns a complete JSON structure to use as the secret value. The structure begins with the string that you supply using the SecretStringTemplate. This template string must be a properly formatted JSON string that contains all of the secret value information except the password. The operation then generates a random password using the rules specified by the other parameters. Finally, the operations inserts the generated password into the secret value structure along with the JSON key name that's specified by the GenerateStringKey parameter.

For examples, see AWS::SecretsManager::Secret: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html

    .PARAMETER ExcludeUppercase
        Specifies that the generated password should not include uppercase letters. The default if you do not include this switch parameter is False, and the generated password can include uppercase letters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludeuppercase
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER RequireEachIncludedType
        Specifies whether the generated password must include at least one of every allowed character type. If you don't include this switch, the default value is True, and the generated password includes at least one of every character type.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-requireeachincludedtype
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeSpace
        Specifies that the generated password can include the space character. The default if you do not include this switch parameter is False, and the generated password doesn't include space characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-includespace
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ExcludeCharacters
        A string that includes characters that should not be included in the generated password. The default is that all characters from the included sets can be used. The string can be a minimum length of 0 characters and a maximum length of 7168 characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludecharacters
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER GenerateStringKey
        The JSON key name that's used to add the generated password to the JSON structure specified by the SecretStringTemplateparameter. If you specify this parameter, then you must also specify SecretStringTemplate.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-generatestringkey
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER PasswordLength
        The desired length of the generated password. The default value if you do not include this parameter is 32 characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-passwordlength
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ExcludePunctuation
        Specifies that the generated password should not include punctuation characters. The default if you do not include this switch parameter is that punctuation characters can be included.
The following are the punctuation characters that *can* be included in the generated password if you don't explicitly exclude them with ExcludeCharacters or ExcludePunctuation:
! " # $ % & '   * + , - . / : ; < = > ? @   ] ^ _  { | } ~

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludepunctuation
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ExcludeLowercase
        Specifies that the generated password should not include lowercase letters. The default if you don't include this switch parameter is False, and the generated password can include lowercase letters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludelowercase
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER SecretStringTemplate
        A properly structured JSON string that the generated password can be added to. If you specify this parameter, then you must also specify GenerateStringKey. That key is combined with the generated random string and inserted into the JSON structure that's specified by this parameter. The merged JSON string is returned as the completed SecretStringof the secret. The default if you don't include this parameter is that the generated random password string is returned by itself, and isn't embeded in a JSON structure.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-secretstringtemplate
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ExcludeNumbers
        Specifies that the generated password should not include digits. The default if you don't include this switch parameter is False, and the generated password can include digits.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludenumbers
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SecretsManager.Secret.GenerateSecretString')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","PasswordLength")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","PasswordLength")]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ExcludeUppercase,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RequireEachIncludedType,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeSpace,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExcludeCharacters,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $GenerateStringKey,
        [parameter(Mandatory = $false)]
        [Int]
        $PasswordLength,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ExcludePunctuation,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ExcludeLowercase,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SecretStringTemplate,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ExcludeNumbers
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecretsManager.Secret.GenerateSecretString'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
