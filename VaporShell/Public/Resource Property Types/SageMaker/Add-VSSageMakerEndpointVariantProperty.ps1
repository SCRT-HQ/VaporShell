function Add-VSSageMakerEndpointVariantProperty {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Endpoint.VariantProperty resource property to the template. Specifies a production variant property type for an Endpoint.

    .DESCRIPTION
        Adds an AWS::SageMaker::Endpoint.VariantProperty resource property to the template.
Specifies a production variant property type for an Endpoint.

If you are updating an Endpoint with the RetainAllVariantProperties: https://docs.aws.amazon.com/sagemaker/latest/dg/API_UpdateEndpoint.html#SageMaker-UpdateEndpoint-request-RetainAllVariantProperties option set to true, the VarientProperty objects listed in ExcludeRetainedVariantProperties: https://docs.aws.amazon.com/sagemaker/latest/dg/API_UpdateEndpoint.html#SageMaker-UpdateEndpoint-request-ExcludeRetainedVariantProperties override the existing varient properties of the Endpoint.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html

    .PARAMETER VariantPropertyType
        The type of varient property. The supported values are:
+ DesiredInstanceCount: Overrides the existing variant instance counts using the InitialInstanceCount: https://docs.aws.amazon.com/sagemaker/latest/dg/API_ProductionVariant.html#SageMaker-Type-ProductionVariant-InitialInstanceCount values in the ProductionVariants: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html#SageMaker-CreateEndpointConfig-request-ProductionVariants.
+ DesiredWeight: Overrides the existing variant weights using the InitialVariantWeight: https://docs.aws.amazon.com/sagemaker/latest/dg/API_ProductionVariant.html#SageMaker-Type-ProductionVariant-InitialVariantWeight values in the ProductionVariants: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html#SageMaker-CreateEndpointConfig-request-ProductionVariants.
+ DataCaptureConfig: Not currently supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html#cfn-sagemaker-endpoint-variantproperty-variantpropertytype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Endpoint.VariantProperty')]
    [cmdletbinding()]
    Param
    (
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
        $VariantPropertyType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Endpoint.VariantProperty'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
