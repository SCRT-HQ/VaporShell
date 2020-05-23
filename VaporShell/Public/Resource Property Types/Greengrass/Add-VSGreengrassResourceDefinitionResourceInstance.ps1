function Add-VSGreengrassResourceDefinitionResourceInstance {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinition.ResourceInstance resource property to the template. <a name="aws-properties-greengrass-resourcedefinition-resourceinstance-description"></a>A local resource, machine learning resource, or secret resource. For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html, Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html, and Deploy Secrets to the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/secrets.html in the *AWS IoT Greengrass Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinition.ResourceInstance resource property to the template.
<a name="aws-properties-greengrass-resourcedefinition-resourceinstance-description"></a>A local resource, machine learning resource, or secret resource. For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html, Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html, and Deploy Secrets to the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/secrets.html in the *AWS IoT Greengrass Developer Guide*.

<a name="aws-properties-greengrass-resourcedefinition-resourceinstance-inheritance"></a> In an AWS CloudFormation template, the Resources property of the  AWS::Greengrass::ResourceDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html resource contains a list of ResourceInstance property types.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html

    .PARAMETER ResourceDataContainer
        A container for resource data. The container takes only one of the following supported resource data types: LocalDeviceResourceData, LocalVolumeResourceData, SageMakerMachineLearningModelResourceData, S3MachineLearningModelResourceData, or SecretsManagerSecretResourceData.
Only one resource type can be defined for a ResourceDataContainer instance.

        Type: ResourceDataContainer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-resourcedatacontainer
        UpdateType: Immutable

    .PARAMETER Id
        A descriptive or arbitrary ID for the resource. This value must be unique within the resource definition version. Maximum length is 128 characters with pattern a-zA-Z0-9:_-]+.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-id
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Name
        The descriptive resource name, which is displayed on the AWS IoT Greengrass console. Maximum length 128 characters with pattern a-zA-Z0-9:_-]+. This must be unique within a Greengrass group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-name
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceInstance')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ResourceDataContainer,
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceInstance'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
