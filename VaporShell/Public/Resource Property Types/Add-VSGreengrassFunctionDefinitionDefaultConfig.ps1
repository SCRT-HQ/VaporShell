function Add-VSGreengrassFunctionDefinitionDefaultConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::FunctionDefinition.DefaultConfig resource property to the template. <a name="aws-properties-greengrass-functiondefinition-defaultconfig-description"></a>The default configuration that applies to all Lambda functions in the function definition version. Individual Lambda functions can override these settings.

    .DESCRIPTION
        Adds an AWS::Greengrass::FunctionDefinition.DefaultConfig resource property to the template.
<a name="aws-properties-greengrass-functiondefinition-defaultconfig-description"></a>The default configuration that applies to all Lambda functions in the function definition version. Individual Lambda functions can override these settings.

<a name="aws-properties-greengrass-functiondefinition-defaultconfig-inheritance"></a> In an AWS CloudFormation template, DefaultConfig is a property of the  FunctionDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html

    .PARAMETER Execution
        Configuration settings for the Lambda execution environment on the AWS IoT Greengrass core.

        Type: Execution
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html#cfn-greengrass-functiondefinition-defaultconfig-execution
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.FunctionDefinition.DefaultConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Execution
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.FunctionDefinition.DefaultConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
