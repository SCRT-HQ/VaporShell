function Add-VSGreengrassResourceDefinitionResourceDataContainer {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinition.ResourceDataContainer resource property to the template. <a name="aws-properties-greengrass-resourcedefinition-resourcedatacontainer-description"></a>A container for resource data, which defines the resource type. The container takes only one of the following supported resource data types: LocalDeviceResourceData, LocalVolumeResourceData, SageMakerMachineLearningModelResourceData, S3MachineLearningModelResourceData, or SecretsManagerSecretResourceData.

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinition.ResourceDataContainer resource property to the template.
<a name="aws-properties-greengrass-resourcedefinition-resourcedatacontainer-description"></a>A container for resource data, which defines the resource type. The container takes only one of the following supported resource data types: LocalDeviceResourceData, LocalVolumeResourceData, SageMakerMachineLearningModelResourceData, S3MachineLearningModelResourceData, or SecretsManagerSecretResourceData.

**Note**

Only one resource type can be defined for a ResourceDataContainer instance.

<a name="aws-properties-greengrass-resourcedefinition-resourcedatacontainer-inheritance"></a> In an AWS CloudFormation template, ResourceDataContainer is a property of the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html

    .PARAMETER SecretsManagerSecretResourceData
        Settings for a secret resource.

        Type: SecretsManagerSecretResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-secretsmanagersecretresourcedata
        UpdateType: Immutable

    .PARAMETER SageMakerMachineLearningModelResourceData
        Settings for a machine learning resource saved as an Amazon SageMaker training job.

        Type: SageMakerMachineLearningModelResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-sagemakermachinelearningmodelresourcedata
        UpdateType: Immutable

    .PARAMETER LocalVolumeResourceData
        Settings for a local volume resource.

        Type: LocalVolumeResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localvolumeresourcedata
        UpdateType: Immutable

    .PARAMETER LocalDeviceResourceData
        Settings for a local device resource.

        Type: LocalDeviceResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localdeviceresourcedata
        UpdateType: Immutable

    .PARAMETER S3MachineLearningModelResourceData
        Settings for a machine learning resource stored in Amazon S3.

        Type: S3MachineLearningModelResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-s3machinelearningmodelresourcedata
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDataContainer')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecretsManagerSecretResourceData,
        [parameter(Mandatory = $false)]
        $SageMakerMachineLearningModelResourceData,
        [parameter(Mandatory = $false)]
        $LocalVolumeResourceData,
        [parameter(Mandatory = $false)]
        $LocalDeviceResourceData,
        [parameter(Mandatory = $false)]
        $S3MachineLearningModelResourceData
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDataContainer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
