# Add-VSDirectoryServiceSimpleADVpcSettings

## SYNOPSIS
Adds an AWS::DirectoryService::SimpleAD.VpcSettings resource property to the template.
Contains VPC information for the CreateDirectory: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateDirectory.html or CreateMicrosoftAD: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateMicrosoftAD.html operation.

## SYNTAX

```
Add-VSDirectoryServiceSimpleADVpcSettings [-SubnetIds] <Object> [-VpcId] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DirectoryService::SimpleAD.VpcSettings resource property to the template.
Contains VPC information for the CreateDirectory: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateDirectory.html or CreateMicrosoftAD: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_CreateMicrosoftAD.html operation.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SubnetIds
The identifiers of the subnets for the directory servers.
The two subnets must be in different Availability Zones.
AWS Directory Service specifies a directory server and a DNS server in each of these subnets.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-subnetids
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -VpcId
The identifier of the VPC in which to create the directory.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-vpcid
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

### Vaporshell.Resource.DirectoryService.SimpleAD.VpcSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html)

