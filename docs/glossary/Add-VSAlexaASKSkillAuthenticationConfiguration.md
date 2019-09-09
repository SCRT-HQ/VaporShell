# Add-VSAlexaASKSkillAuthenticationConfiguration

## SYNOPSIS
Adds an Alexa::ASK::Skill.AuthenticationConfiguration resource property to the template.
The AuthenticationConfiguration property type specifies the Login with Amazon (LWA configuration used to authenticate with the Alexa service.
Only Login with Amazon security profiles created through the Amazon Developer Console: https://developer.amazon.com/lwa/sp/overview.html are supported for authentication.
A client ID, client secret, and refresh token are required.
You can generate a client ID and client secret by creating a new security profile: https://developer.amazon.com/lwa/sp/create-security-profile.html on the Amazon Developer Portal or you can retrieve them from an existing profile.
You can then produce the refresh token by providing the client ID and client secret to the generate-lwa-tokens: https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#generate-lwa-tokens command in the ASK CLI: https://developer.amazon.com/docs/smapi/ask-cli-intro.html.

## SYNTAX

```
Add-VSAlexaASKSkillAuthenticationConfiguration [-RefreshToken] <Object> [-ClientSecret] <Object>
 [-ClientId] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an Alexa::ASK::Skill.AuthenticationConfiguration resource property to the template.
The AuthenticationConfiguration property type specifies the Login with Amazon (LWA configuration used to authenticate with the Alexa service.
Only Login with Amazon security profiles created through the Amazon Developer Console: https://developer.amazon.com/lwa/sp/overview.html are supported for authentication.
A client ID, client secret, and refresh token are required.
You can generate a client ID and client secret by creating a new security profile: https://developer.amazon.com/lwa/sp/create-security-profile.html on the Amazon Developer Portal or you can retrieve them from an existing profile.
You can then produce the refresh token by providing the client ID and client secret to the generate-lwa-tokens: https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#generate-lwa-tokens command in the ASK CLI: https://developer.amazon.com/docs/smapi/ask-cli-intro.html.

AuthenticationConfiguration is a property of the Alexa::ASK::Skill resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RefreshToken
Refresh token from Login with Amazon LWA.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-refreshtoken
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

### -ClientSecret
Client secret from Login with Amazon LWA.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientsecret
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

### -ClientId
Client ID from Login with Amazon LWA.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Alexa.ASK.Skill.AuthenticationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html)

