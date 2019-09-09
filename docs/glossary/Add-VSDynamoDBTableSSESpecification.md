# Add-VSDynamoDBTableSSESpecification

## SYNOPSIS
Adds an AWS::DynamoDB::Table.SSESpecification resource property to the template.
Represents the settings used to enable server-side encryption.

## SYNTAX

```
Add-VSDynamoDBTableSSESpecification [[-KMSMasterKeyId] <Object>] [-SSEEnabled] <Boolean> [[-SSEType] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.SSESpecification resource property to the template.
Represents the settings used to enable server-side encryption.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -KMSMasterKeyId
The KMS customer master key CMK that should be used for the AWS KMS encryption.
To specify a CMK, use its key ID, Amazon Resource Name ARN, alias name, or alias ARN.
Note that you should only provide this parameter if the key is different from the default DynamoDB customer master key alias/aws/dynamodb.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-kmsmasterkeyid
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

### -SSEEnabled
Indicates whether server-side encryption is done using an AWS managed CMK or an AWS owned CMK.
If enabled true, server-side encryption type is set to KMS and an AWS managed CMK is used AWS KMS charges apply.
If disabled false or not specified, server-side encryption is set to AWS owned CMK.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-sseenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SSEType
Server-side encryption type.
The only supported value is:
+  KMS - Server-side encryption that uses AWS Key Management Service.
The key is stored in your account and is managed by AWS KMS AWS KMS charges apply.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-ssetype
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

### Vaporshell.Resource.DynamoDB.Table.SSESpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html)

