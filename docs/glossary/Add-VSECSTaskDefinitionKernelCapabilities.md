# Add-VSECSTaskDefinitionKernelCapabilities

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.KernelCapabilities resource property to the template.
The KernelCapabilities property specifies the Linux capabilities for the container that are added to or dropped from the default configuration that is provided by Docker.
For more information on the default capabilities and the non-default available capabilities, see Runtime privilege and Linux capabilities: https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities in the *Docker run reference*.
For more detailed information on these Linux capabilities, see the capabilities(7: http://man7.org/linux/man-pages/man7/capabilities.7.html Linux manual page.

## SYNTAX

```
Add-VSECSTaskDefinitionKernelCapabilities [[-Add] <Object>] [[-Drop] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.KernelCapabilities resource property to the template.
The KernelCapabilities property specifies the Linux capabilities for the container that are added to or dropped from the default configuration that is provided by Docker.
For more information on the default capabilities and the non-default available capabilities, see Runtime privilege and Linux capabilities: https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities in the *Docker run reference*.
For more detailed information on these Linux capabilities, see the capabilities(7: http://man7.org/linux/man-pages/man7/capabilities.7.html Linux manual page.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Add
The Linux capabilities for the container that have been added to the default configuration provided by Docker.
This parameter maps to CapAdd in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --cap-add option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the add parameter is not supported.
Valid values: "ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" | "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" | "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" | "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" | "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" | "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-add
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Immutable

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

### -Drop
The Linux capabilities for the container that have been removed from the default configuration provided by Docker.
This parameter maps to CapDrop in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --cap-drop option to docker run: https://docs.docker.com/engine/reference/run/.
Valid values: "ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" | "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" | "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" | "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" | "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" | "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-drop
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Immutable

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

### Vaporshell.Resource.ECS.TaskDefinition.KernelCapabilities
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html)

