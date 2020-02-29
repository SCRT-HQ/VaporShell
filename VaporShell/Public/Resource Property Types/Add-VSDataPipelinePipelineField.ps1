function Add-VSDataPipelinePipelineField {
    <#
    .SYNOPSIS
        Adds an AWS::DataPipeline::Pipeline.Field resource property to the template. A key-value pair that describes a property of a PipelineObject. The value is specified as either a string value (StringValue or a reference to another object (RefValue but not as both. To view fields for a data pipeline object, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.

    .DESCRIPTION
        Adds an AWS::DataPipeline::Pipeline.Field resource property to the template.
A key-value pair that describes a property of a PipelineObject. The value is specified as either a string value (StringValue or a reference to another object (RefValue but not as both. To view fields for a data pipeline object, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html

    .PARAMETER Key
        Specifies the name of a field for a particular object. To view valid values for a particular field, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-key
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER RefValue
        A field value that you specify as an identifier of another object in the same pipeline definition.
You can specify the field value as either a string value StringValue or a reference to another object RefValue, but not both.
Required if the key that you are using requires it.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-refvalue
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER StringValue
        A field value that you specify as a string. To view valid values for a particular field, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.
You can specify the field value as either a string value StringValue or a reference to another object RefValue, but not both.
Required if the key that you are using requires it.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-stringvalue
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataPipeline.Pipeline.Field')]
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
        $Key,
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
        $RefValue,
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
        $StringValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataPipeline.Pipeline.Field'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
