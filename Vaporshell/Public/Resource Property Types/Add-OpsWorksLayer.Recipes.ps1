function Add-OpsWorksLayer.Recipes {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Method resource to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html

    .PARAMETER Configure
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-configure
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER Deploy
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-deploy
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER Setup
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-setup
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER Shutdown
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-shutdown
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER Undeploy
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-undeploy
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    [OutputType('Vaporshell.Resource.OpsWorks.Layer.Recipes')]
    [cmdletbinding()]
    Param
    (
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True" -or $val -eq "False") {
                $val = $val.ToLower()
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.Layer.Recipes'
    }
}
