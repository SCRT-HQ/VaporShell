function Add-VSGreengrassResourceDefinitionGroupOwnerSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinition.GroupOwnerSetting resource property to the template. <a name="aws-properties-greengrass-resourcedefinition-groupownersetting-description"></a>Settings that define additional Linux OS group permissions to give to the Lambda function process. You can give the permissions of the Linux group that owns the resource or choose another Linux group. These permissions are in addition to the function's RunAs permissions.

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinition.GroupOwnerSetting resource property to the template.
<a name="aws-properties-greengrass-resourcedefinition-groupownersetting-description"></a>Settings that define additional Linux OS group permissions to give to the Lambda function process. You can give the permissions of the Linux group that owns the resource or choose another Linux group. These permissions are in addition to the function's RunAs permissions.

<a name="aws-properties-greengrass-resourcedefinition-groupownersetting-inheritance"></a> In an AWS CloudFormation template, GroupOwnerSetting is a property of the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html and https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html property types.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html

    .PARAMETER AutoAddGroupOwner
        Indicates whether to give the privileges of the Linux group that owns the resource to the Lambda process. This gives the Lambda process the file access permissions of the Linux group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-autoaddgroupowner
        PrimitiveType: Boolean
        UpdateType: Immutable

    .PARAMETER GroupOwner
        The name of the Linux group whose privileges you want to add to the Lambda process. This value is ignored if AutoAddGroupOwner is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-groupowner
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinition.GroupOwnerSetting')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AutoAddGroupOwner,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $GroupOwner
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinition.GroupOwnerSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
