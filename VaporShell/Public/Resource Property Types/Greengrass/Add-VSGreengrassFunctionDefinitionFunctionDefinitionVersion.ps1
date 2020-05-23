function Add-VSGreengrassFunctionDefinitionFunctionDefinitionVersion {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::FunctionDefinition.FunctionDefinitionVersion resource property to the template. <a name="aws-properties-greengrass-functiondefinition-functiondefinitionversion-description"></a>A function definition version contains a list of functions.

    .DESCRIPTION
        Adds an AWS::Greengrass::FunctionDefinition.FunctionDefinitionVersion resource property to the template.
<a name="aws-properties-greengrass-functiondefinition-functiondefinitionversion-description"></a>A function definition version contains a list of functions.

**Note**

After you create a function definition version that contains the functions you want to deploy, you must add it to your group version. For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

<a name="aws-properties-greengrass-functiondefinition-functiondefinitionversion-inheritance"></a> In an AWS CloudFormation template, FunctionDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::FunctionDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html

    .PARAMETER DefaultConfig
        The default configuration that applies to all Lambda functions in the group. Individual Lambda functions can override these settings.

        Type: DefaultConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-defaultconfig
        UpdateType: Immutable

    .PARAMETER Functions
        The functions in this version.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-functions
        ItemType: Function
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.FunctionDefinition.FunctionDefinitionVersion')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DefaultConfig,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Greengrass.FunctionDefinition.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Functions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.FunctionDefinition.FunctionDefinitionVersion'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
