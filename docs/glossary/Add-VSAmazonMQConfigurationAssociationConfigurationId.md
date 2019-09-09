# Add-VSAmazonMQConfigurationAssociationConfigurationId

## SYNOPSIS
Adds an AWS::AmazonMQ::ConfigurationAssociation.ConfigurationId resource property to the template.
The ConfigurationId property type specifies a configuration Id and the revision of a configuration.

## SYNTAX

```
Add-VSAmazonMQConfigurationAssociationConfigurationId [-Revision] <Int32> [-Id] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AmazonMQ::ConfigurationAssociation.ConfigurationId resource property to the template.
The ConfigurationId property type specifies a configuration Id and the revision of a configuration.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Revision
The revision number of the configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-revision
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The unique ID that Amazon MQ generates for the configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-id
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

### Vaporshell.Resource.AmazonMQ.ConfigurationAssociation.ConfigurationId
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html)

