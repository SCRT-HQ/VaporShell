# Add-VSCognitoIdentityPoolCognitoStreams

## SYNOPSIS
Adds an AWS::Cognito::IdentityPool.CognitoStreams resource property to the template.
CognitoStreams is a property of the AWS::Cognito::IdentityPool: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html resource that defines configuration options for Amazon Cognito streams.

## SYNTAX

```
Add-VSCognitoIdentityPoolCognitoStreams [[-StreamingStatus] <Object>] [[-StreamName] <Object>]
 [[-RoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::IdentityPool.CognitoStreams resource property to the template.
CognitoStreams is a property of the AWS::Cognito::IdentityPool: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html resource that defines configuration options for Amazon Cognito streams.

## PARAMETERS

### -StreamingStatus
Status of the Amazon Cognito streams.
Valid values are: ENABLED or DISABLED.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-streamingstatus
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

### -StreamName
The name of the Amazon Cognito stream to receive updates.
This stream must be in the developer's account and in the same Region as the identity pool.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-streamname
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

### -RoleArn
The Amazon Resource Name ARN of the role Amazon Cognito can assume to publish to the stream.
This role must grant access to Amazon Cognito cognito-sync to invoke PutRecord on your Amazon Cognito stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-rolearn
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

### Vaporshell.Resource.Cognito.IdentityPool.CognitoStreams
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html)

