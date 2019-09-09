function Add-VSGreengrassFunctionDefinitionRunAs {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::FunctionDefinition.RunAs resource property to the template. <a name="aws-properties-greengrass-functiondefinition-runas-description"></a>The access identity whose permissions are used to run the Lambda function. This setting overrides the default access identity that's specified for the group (by default, ggc_user and ggc_group. You can override the user, group, or both. For more information, see Run as: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-access-identity.html in the *AWS IoT Greengrass Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Greengrass::FunctionDefinition.RunAs resource property to the template.
<a name="aws-properties-greengrass-functiondefinition-runas-description"></a>The access identity whose permissions are used to run the Lambda function. This setting overrides the default access identity that's specified for the group (by default, ggc_user and ggc_group. You can override the user, group, or both. For more information, see Run as: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-access-identity.html in the *AWS IoT Greengrass Developer Guide*.

**Important**

Running as the root user increases risks to your data and device. Do not run as root (UID/GID=0 unless your business case requires it. For more information and requirements, see Running a Lambda Function as Root: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-running-as-root.

<a name="aws-properties-greengrass-functiondefinition-runas-inheritance"></a> In an AWS CloudFormation template, RunAs is a property of the  Execution : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-execution.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html

    .PARAMETER Uid
        The user ID whose permissions are used to run the Lambda function. You can use the getent passwd command on your core device to look up the user ID.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html#cfn-greengrass-functiondefinition-runas-uid
        PrimitiveType: Integer
        UpdateType: Immutable

    .PARAMETER Gid
        The group ID whose permissions are used to run the Lambda function. You can use the getent group command on your core device to look up the group ID.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html#cfn-greengrass-functiondefinition-runas-gid
        PrimitiveType: Integer
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.FunctionDefinition.RunAs')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $Uid,
        [parameter(Mandatory = $false)]
        [Int]
        $Gid
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.FunctionDefinition.RunAs'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
