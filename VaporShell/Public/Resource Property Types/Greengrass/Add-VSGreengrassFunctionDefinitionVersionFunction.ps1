function Add-VSGreengrassFunctionDefinitionVersionFunction {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::FunctionDefinitionVersion.Function resource property to the template. <a name="aws-properties-greengrass-functiondefinitionversion-function-description"></a>A function is a Lambda function that's referenced from an AWS IoT Greengrass group. The function is deployed to a Greengrass core where it runs locally. For more information, see Run Lambda Functions on the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-functions.html in the *AWS IoT Greengrass Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Greengrass::FunctionDefinitionVersion.Function resource property to the template.
<a name="aws-properties-greengrass-functiondefinitionversion-function-description"></a>A function is a Lambda function that's referenced from an AWS IoT Greengrass group. The function is deployed to a Greengrass core where it runs locally. For more information, see Run Lambda Functions on the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-functions.html in the *AWS IoT Greengrass Developer Guide*.

<a name="aws-properties-greengrass-functiondefinitionversion-function-inheritance"></a> In an AWS CloudFormation template, the Functions property of the  AWS::Greengrass::FunctionDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html resource contains a list of Function property types.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html

    .PARAMETER FunctionArn
        The Amazon Resource Name ARN of the alias recommended or version of the referenced Lambda function.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionarn
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER FunctionConfiguration
        The group-specific settings of the Lambda function. These settings configure the function's behavior in the Greengrass group.

        Type: FunctionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionconfiguration
        UpdateType: Immutable

    .PARAMETER Id
        A descriptive or arbitrary ID for the function. This value must be unique within the function definition version. Maximum length is 128 characters with pattern a-zA-Z0-9:_-]+.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-id
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.Function')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FunctionArn,
        [parameter(Mandatory = $true)]
        $FunctionConfiguration,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Id
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.Function'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
