function Add-VSGreengrassResourceDefinitionLocalDeviceResourceData {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinition.LocalDeviceResourceData resource property to the template. <a name="aws-properties-greengrass-resourcedefinition-localdeviceresourcedata-description"></a>Settings for a local device resource, which represents a file under /dev. For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html in the *AWS IoT Greengrass Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinition.LocalDeviceResourceData resource property to the template.
<a name="aws-properties-greengrass-resourcedefinition-localdeviceresourcedata-description"></a>Settings for a local device resource, which represents a file under /dev. For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html in the *AWS IoT Greengrass Developer Guide*.

<a name="aws-properties-greengrass-resourcedefinition-localdeviceresourcedata-inheritance"></a> In an AWS CloudFormation template, LocalDeviceResourceData can be used in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html

    .PARAMETER SourcePath
        The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under /dev.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-sourcepath
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER GroupOwnerSetting
        Settings that define additional Linux OS group permissions to give to the Lambda function process.

        Type: GroupOwnerSetting
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-groupownersetting
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinition.LocalDeviceResourceData')]
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
        $SourcePath,
        [parameter(Mandatory = $false)]
        $GroupOwnerSetting
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinition.LocalDeviceResourceData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
