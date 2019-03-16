function Add-VSKinesisAnalyticsV2ApplicationOutputOutput {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.Output resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.Output resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html

    .PARAMETER DestinationSchema
        Type: DestinationSchema    
        Required: True    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-destinationschema    
        UpdateType: Mutable    

    .PARAMETER LambdaOutput
        Type: LambdaOutput    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-lambdaoutput    
        UpdateType: Mutable    

    .PARAMETER KinesisFirehoseOutput
        Type: KinesisFirehoseOutput    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisfirehoseoutput    
        UpdateType: Mutable    

    .PARAMETER KinesisStreamsOutput
        Type: KinesisStreamsOutput    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisstreamsoutput    
        UpdateType: Mutable    

    .PARAMETER Name
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-name    
        PrimitiveType: String    
        UpdateType: Immutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.ApplicationOutput.Output')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $DestinationSchema,
        [parameter(Mandatory = $false)]
        $LambdaOutput,
        [parameter(Mandatory = $false)]
        $KinesisFirehoseOutput,
        [parameter(Mandatory = $false)]
        $KinesisStreamsOutput,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.ApplicationOutput.Output'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
