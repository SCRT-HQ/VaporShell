function Add-VSKinesisAnalyticsV2ApplicationApplicationCodeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.ApplicationCodeConfiguration resource property to the template. Describes code configuration for a Java-based Kinesis Data Analytics application.

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.ApplicationCodeConfiguration resource property to the template.
Describes code configuration for a Java-based Kinesis Data Analytics application.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html

    .PARAMETER CodeContentType
        Specifies whether the code content is in text or zip format.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html#cfn-kinesisanalyticsv2-application-applicationcodeconfiguration-codecontenttype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER CodeContent
        The location and type of the application code.

        Type: CodeContent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html#cfn-kinesisanalyticsv2-application-applicationcodeconfiguration-codecontent
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.Application.ApplicationCodeConfiguration')]
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
        $CodeContentType,
        [parameter(Mandatory = $true)]
        $CodeContent
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.Application.ApplicationCodeConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
