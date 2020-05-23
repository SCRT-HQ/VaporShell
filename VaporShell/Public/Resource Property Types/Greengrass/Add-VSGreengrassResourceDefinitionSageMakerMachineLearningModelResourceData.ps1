function Add-VSGreengrassResourceDefinitionSageMakerMachineLearningModelResourceData {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinition.SageMakerMachineLearningModelResourceData resource property to the template. <a name="aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-description"></a>Settings for an Secrets Manager machine learning resource. For more information, see Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html in the *AWS IoT Greengrass Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinition.SageMakerMachineLearningModelResourceData resource property to the template.
<a name="aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-description"></a>Settings for an Secrets Manager machine learning resource. For more information, see Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html in the *AWS IoT Greengrass Developer Guide*.

<a name="aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-inheritance"></a> In an AWS CloudFormation template, SageMakerMachineLearningModelResourceData can be used in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html

    .PARAMETER OwnerSetting
        The owner setting for the downloaded machine learning resource. For more information, see Access Machine Learning Resources from Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-ml-resources.html in the *AWS IoT Greengrass Developer Guide*.

        Type: ResourceDownloadOwnerSetting
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-ownersetting
        UpdateType: Immutable

    .PARAMETER DestinationPath
        The absolute local path of the resource inside the Lambda environment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-destinationpath
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER SageMakerJobArn
        The Amazon Resource Name ARN of the Amazon SageMaker training job that represents the source model.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-sagemakerjobarn
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinition.SageMakerMachineLearningModelResourceData')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OwnerSetting,
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
        $DestinationPath,
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
        $SageMakerJobArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinition.SageMakerMachineLearningModelResourceData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
