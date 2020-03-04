function Add-VSGreengrassCoreDefinitionCoreDefinitionVersion {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::CoreDefinition.CoreDefinitionVersion resource property to the template. <a name="aws-properties-greengrass-coredefinition-coredefinitionversion-description"></a> A core definition version contains a Greengrass core: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html.

    .DESCRIPTION
        Adds an AWS::Greengrass::CoreDefinition.CoreDefinitionVersion resource property to the template.
<a name="aws-properties-greengrass-coredefinition-coredefinitionversion-description"></a> A core definition version contains a Greengrass core: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html.

**Note**

After you create a core definition version that contains the core you want to deploy, you must add it to your group version. For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

<a name="aws-properties-greengrass-coredefinition-coredefinitionversion-inheritance"></a> In an AWS CloudFormation template, CoreDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::CoreDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html

    .PARAMETER Cores
        The Greengrass core in this version. Currently, the Cores property for a core definition version can contain only one core.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html#cfn-greengrass-coredefinition-coredefinitionversion-cores
        ItemType: Core
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.CoreDefinition.CoreDefinitionVersion')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Greengrass.CoreDefinition.Core"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Cores
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.CoreDefinition.CoreDefinitionVersion'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
