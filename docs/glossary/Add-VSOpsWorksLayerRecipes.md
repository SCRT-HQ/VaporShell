# Add-VSOpsWorksLayerRecipes

## SYNOPSIS
Adds an AWS::OpsWorks::Layer.Recipes resource property to the template.
AWS OpsWorks Stacks supports five lifecycle events: **setup**, **configuration**, **deploy**, **undeploy**, and **shutdown**.
For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event.
In addition, you can provide custom recipes for any or all layers and events.
AWS OpsWorks Stacks runs custom event recipes after the standard recipes.
LayerCustomRecipes specifies the custom recipes for a particular layer to be run in response to each of the five events.

## SYNTAX

```
Add-VSOpsWorksLayerRecipes [[-Configure] <Object>] [[-Deploy] <Object>] [[-Setup] <Object>]
 [[-Shutdown] <Object>] [[-Undeploy] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::Layer.Recipes resource property to the template.
AWS OpsWorks Stacks supports five lifecycle events: **setup**, **configuration**, **deploy**, **undeploy**, and **shutdown**.
For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event.
In addition, you can provide custom recipes for any or all layers and events.
AWS OpsWorks Stacks runs custom event recipes after the standard recipes.
LayerCustomRecipes specifies the custom recipes for a particular layer to be run in response to each of the five events.

To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension.
For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Configure
An array of custom recipe names to be run following a configure event.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-configure
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Deploy
An array of custom recipe names to be run following a deploy event.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-deploy
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Setup
An array of custom recipe names to be run following a setup event.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-setup
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Shutdown
An array of custom recipe names to be run following a shutdown event.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-shutdown
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Undeploy
An array of custom recipe names to be run following a undeploy event.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-undeploy
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.OpsWorks.Layer.Recipes
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html)

