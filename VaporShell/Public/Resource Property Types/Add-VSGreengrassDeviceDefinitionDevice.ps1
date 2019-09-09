function Add-VSGreengrassDeviceDefinitionDevice {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::DeviceDefinition.Device resource property to the template. <a name="aws-properties-greengrass-devicedefinition-device-description"></a> A device is an AWS IoT device (thing that's added to a Greengrass group. Greengrass devices can communicate with the Greengrass core in the same group. For more information, see What Is AWS IoT Greengrass?: https://docs.aws.amazon.com/greengrass/latest/developerguide/what-is-gg.html in the *AWS IoT Greengrass Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Greengrass::DeviceDefinition.Device resource property to the template.
<a name="aws-properties-greengrass-devicedefinition-device-description"></a> A device is an AWS IoT device (thing that's added to a Greengrass group. Greengrass devices can communicate with the Greengrass core in the same group. For more information, see What Is AWS IoT Greengrass?: https://docs.aws.amazon.com/greengrass/latest/developerguide/what-is-gg.html in the *AWS IoT Greengrass Developer Guide*.

<a name="aws-properties-greengrass-devicedefinition-device-inheritance"></a> In an AWS CloudFormation template, the Devices property of the  DeviceDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html property type contains a list of Device property types.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html

    .PARAMETER SyncShadow
        Indicates whether the device's local shadow is synced with the cloud automatically.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-syncshadow
        PrimitiveType: Boolean
        UpdateType: Immutable

    .PARAMETER ThingArn
        The ARN of the device, which is an AWS IoT device thing.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-thingarn
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Id
        A descriptive or arbitrary ID for the device. This value must be unique within the device definition version. Maximum length is 128 characters with pattern a-zA-Z0-9:_-]+.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-id
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER CertificateArn
        The Amazon Resource Name ARN of the device certificate for the device. This X.509 certificate is used to authenticate the device with AWS IoT and AWS IoT Greengrass services.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-certificatearn
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.DeviceDefinition.Device')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $SyncShadow,
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
        $ThingArn,
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
        $Id,
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
        $CertificateArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.DeviceDefinition.Device'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
