# Add-VSAppSyncResolverSyncConfig

## SYNOPSIS
Adds an AWS::AppSync::Resolver.SyncConfig resource property to the template.
Describes a Sync configuration for a resolver.

## SYNTAX

```
Add-VSAppSyncResolverSyncConfig [[-ConflictHandler] <Object>] [-ConflictDetection] <Object>
 [[-LambdaConflictHandlerConfig] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::Resolver.SyncConfig resource property to the template.
Describes a Sync configuration for a resolver.

Contains information on which Conflict Detection as well as Resolution strategy should be performed when the resolver is invoked.

## PARAMETERS

### -ConflictHandler
The Conflict Resolution strategy to perform in the event of a conflict.
+  **OPTIMISTIC_CONCURRENCY**: Resolve conflicts by rejecting mutations when versions do not match the latest version at the server.
+  **AUTOMERGE**: Resolve conflicts with the Automerge conflict resolution strategy.
+  **LAMBDA**: Resolve conflicts with a Lambda function supplied in the LambdaConflictHandlerConfig.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-conflicthandler
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

### -ConflictDetection
The Conflict Detection strategy to use.
+  **VERSION**: Detect conflicts based on object versions for this resolver.
+  **NONE**: Do not detect conflicts when executing this resolver.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-conflictdetection
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

### -LambdaConflictHandlerConfig
The LambdaConflictHandlerConfig when configuring LAMBDA as the Conflict Handler.

Type: LambdaConflictHandlerConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-lambdaconflicthandlerconfig
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

### Vaporshell.Resource.AppSync.Resolver.SyncConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html)

