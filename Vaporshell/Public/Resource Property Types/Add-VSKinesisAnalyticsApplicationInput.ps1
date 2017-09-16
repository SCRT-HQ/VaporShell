function Add-VSKinesisAnalyticsApplicationInput {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalytics::Application.Input resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisAnalytics::Application.Input resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html

    .PARAMETER NamePrefix
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-nameprefix    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER InputSchema
		Type: InputSchema    
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputschema    
		UpdateType: Mutable    

    .PARAMETER KinesisStreamsInput
		Type: KinesisStreamsInput    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisstreamsinput    
		UpdateType: Mutable    

    .PARAMETER KinesisFirehoseInput
		Type: KinesisFirehoseInput    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisfirehoseinput    
		UpdateType: Mutable    

    .PARAMETER InputParallelism
		Type: InputParallelism    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputparallelism    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalytics.Application.Input')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $NamePrefix,
        [parameter(Mandatory = $true)]
        $InputSchema,
        [parameter(Mandatory = $false)]
        $KinesisStreamsInput,
        [parameter(Mandatory = $false)]
        $KinesisFirehoseInput,
        [parameter(Mandatory = $false)]
        $InputParallelism
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalytics.Application.Input'
    }
}
