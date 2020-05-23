function Add-VSGreengrassResourceDefinitionResourceDefinitionVersion {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion resource property to the template. <a name="aws-properties-greengrass-resourcedefinition-resourcedefinitionversion-description"></a>A resource definition version contains a list of resources. (In AWS CloudFormation, resources are named *resource instances*.

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion resource property to the template.
<a name="aws-properties-greengrass-resourcedefinition-resourcedefinitionversion-description"></a>A resource definition version contains a list of resources. (In AWS CloudFormation, resources are named *resource instances*.

**Note**

After you create a resource definition version that contains the resources you want to deploy, you must add it to your group version. For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

<a name="aws-properties-greengrass-resourcedefinition-resourcedefinitionversion-inheritance"></a> In an AWS CloudFormation template, ResourceDefinitionVersion is the property type of the InitialVersion property in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html

    .PARAMETER Resources
        The resources in this version.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html#cfn-greengrass-resourcedefinition-resourcedefinitionversion-resources
        ItemType: ResourceInstance
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDefinitionVersion')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceInstance"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Resources
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDefinitionVersion'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
