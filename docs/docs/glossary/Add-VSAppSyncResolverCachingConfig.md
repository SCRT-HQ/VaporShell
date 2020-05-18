# Add-VSAppSyncResolverCachingConfig

## SYNOPSIS
Adds an AWS::AppSync::Resolver.CachingConfig resource property to the template.
The caching configuration for a resolver that has caching enabled.

## SYNTAX

```
Add-VSAppSyncResolverCachingConfig [[-CachingKeys] <Object>] [[-Ttl] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::Resolver.CachingConfig resource property to the template.
The caching configuration for a resolver that has caching enabled.

## PARAMETERS

### -CachingKeys
The caching keys for a resolver that has caching enabled.
Valid values are entries from the $context.identity and $context.arguments maps.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-cachingkeys
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

### -Ttl
The TTL in seconds for a resolver that has caching enabled.
Valid values are between 1 and 3600 seconds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-ttl
PrimitiveType: Double
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

### Vaporshell.Resource.AppSync.Resolver.CachingConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html)

