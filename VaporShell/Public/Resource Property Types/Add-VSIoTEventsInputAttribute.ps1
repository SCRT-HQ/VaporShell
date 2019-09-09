function Add-VSIoTEventsInputAttribute {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::Input.Attribute resource property to the template. The attributes from the JSON payload that are made available by the input. Inputs are derived from messages sent to the AWS IoT Events system using BatchPutMessage. Each such message contains a JSON payload, and those attributes (and their paired values specified here are available for use in the condition expressions used by detectors.

    .DESCRIPTION
        Adds an AWS::IoTEvents::Input.Attribute resource property to the template.
The attributes from the JSON payload that are made available by the input. Inputs are derived from messages sent to the AWS IoT Events system using BatchPutMessage. Each such message contains a JSON payload, and those attributes (and their paired values specified here are available for use in the condition expressions used by detectors.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html

    .PARAMETER JsonPath
        An expression that specifies an attribute-value pair in a JSON structure. Use this to specify an attribute from the JSON payload that is made available by the input. Inputs are derived from messages sent to the AWS IoT Events system BatchPutMessage. Each such message contains a JSON payload, and the attribute and its paired value specified here are available for use in the "condition" expressions used by detectors.
Syntax: <field-name>.<field-name>...

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html#cfn-iotevents-input-attribute-jsonpath
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.Input.Attribute')]
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
        $JsonPath
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.Input.Attribute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
