# Add-VSEC2LaunchTemplateMetadataOptions

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.MetadataOptions resource property to the template.
Specifies the metadata options for the instance.

## SYNTAX

```
Add-VSEC2LaunchTemplateMetadataOptions [[-HttpPutResponseHopLimit] <Object>] [[-HttpTokens] <Object>]
 [[-HttpEndpoint] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.MetadataOptions resource property to the template.
Specifies the metadata options for the instance.

MetadataOptions is a property of the AWS::EC2::LaunchTemplate: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## PARAMETERS

### -HttpPutResponseHopLimit
The desired HTTP PUT response hop limit for instance metadata requests.
The larger the number, the further instance metadata requests can travel.
Default: 1
Possible values: Integers from 1 to 64

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-metadataoptions-httpputresponsehoplimit
PrimitiveType: Integer
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

### -HttpTokens
The state of token usage for your instance metadata requests.
If the parameter is not specified in the request, the default state is optional.
If the state is optional, you can choose to retrieve instance metadata with or without a signed token header on your request.
If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned.
If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.
If the state is required, you must send a signed token header with any instance metadata retrieval requests.
In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-metadataoptions-httptokens
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

### -HttpEndpoint
This parameter enables or disables the HTTP metadata endpoint on your instances.
If the parameter is not specified, the default state is enabled.
If you specify a value of disabled, you will not be able to access your instance metadata.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-metadataoptions-httpendpoint
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.LaunchTemplate.MetadataOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html)

