# Add-VSAppMeshVirtualNodeFileAccessLog

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.FileAccessLog resource property to the template.
An object that represents an access log file.

## SYNTAX

```
Add-VSAppMeshVirtualNodeFileAccessLog [-Path] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.FileAccessLog resource property to the template.
An object that represents an access log file.

## PARAMETERS

### -Path
The file path to write access logs to.
You can use /dev/stdout to send access logs to standard out and configure your Envoy container to use a log driver, such as awslogs, to export the access logs to a log storage service such as Amazon CloudWatch Logs.
You can also specify a path in the Envoy container's file system to write the files to disk.
The Envoy process must have write permissions to the path that you specify here.
Otherwise, Envoy fails to bootstrap properly.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html#cfn-appmesh-virtualnode-fileaccesslog-path
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppMesh.VirtualNode.FileAccessLog
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html)

