# Add-VSMediaLiveInputInputVpcRequest

## SYNOPSIS
Adds an AWS::MediaLive::Input.InputVpcRequest resource property to the template.
The settings for an Amazon VPC input.

## SYNTAX

```
Add-VSMediaLiveInputInputVpcRequest [[-SecurityGroupIds] <Object>] [[-SubnetIds] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Input.InputVpcRequest resource property to the template.
The settings for an Amazon VPC input.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SecurityGroupIds
The list of up to five VPC security group IDs to attach to the input VPC network interfaces.
The security groups require subnet IDs.
If none are specified, MediaLive uses the VPC default security group.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-securitygroupids
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

### -SubnetIds
The list of two VPC subnet IDs from the same VPC.
You must associate subnet IDs to two unique Availability Zones.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-subnetids
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MediaLive.Input.InputVpcRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html)

