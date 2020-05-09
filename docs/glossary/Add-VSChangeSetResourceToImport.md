# Add-VSChangeSetResourceToImport

## SYNOPSIS
Creates a \`Amazon.CloudFormation.Model.ResourceToImport\` object to use for the value of parameter \`ResourcesToImport\` on \`New-VSChangeSet\`.

## SYNTAX

```
Add-VSChangeSetResourceToImport [-LogicalResourceId] <String> [-ResourceIdentifier] <Hashtable>
 [-ResourceType] <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a \`Amazon.CloudFormation.Model.ResourceToImport\` object to use for the value of parameter \`ResourcesToImport\` on \`New-VSChangeSet\`.

## EXAMPLES

### EXAMPLE 1
```
Add-VSChangeSetResourceToImport -LogicalResourceId GamesTable -ResourceIdentifier @{TableName = 'Games'} -ResourceType 'AWS::DynamoDB::Table'
```

## PARAMETERS

### -LogicalResourceId
The LogicalId of the resource on the CloudFormation template in the Change Set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceIdentifier
A hashtable containing information identifying the resource to import, e.g.
\`@{TableName = 'Games'}\`.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceType
The CloudFormation resource type of the resource you would like to import.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
