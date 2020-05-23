function Add-VSGreengrassConnectorDefinitionVersionConnector {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ConnectorDefinitionVersion.Connector resource property to the template. <a name="aws-properties-greengrass-connectordefinitionversion-connector-description"></a>Connectors are modules that provide built-in integration with local infrastructure, device protocols, AWS, and other cloud services. For more information, see Integrate with Services and Protocols Using Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors.html in the *AWS IoT Greengrass Developer Guide*.

    .DESCRIPTION
        Adds an AWS::Greengrass::ConnectorDefinitionVersion.Connector resource property to the template.
<a name="aws-properties-greengrass-connectordefinitionversion-connector-description"></a>Connectors are modules that provide built-in integration with local infrastructure, device protocols, AWS, and other cloud services. For more information, see Integrate with Services and Protocols Using Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors.html in the *AWS IoT Greengrass Developer Guide*.

<a name="aws-properties-greengrass-connectordefinitionversion-connector-inheritance"></a> In an AWS CloudFormation template, the Connectors property of the  AWS::Greengrass::ConnectorDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html resource contains a list of Connector property types.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html

    .PARAMETER ConnectorArn
        The Amazon Resource Name ARN of the connector.
For more information about AWS-provided connectors, see AWS-Provided Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors-list.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-connectorarn
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Parameters
        The parameters or configuration that the connector uses.
For more information about AWS-provided connectors, see AWS-Provided Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors-list.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-parameters
        PrimitiveType: Json
        UpdateType: Immutable

    .PARAMETER Id
        A descriptive or arbitrary ID for the connector. This value must be unique within the connector definition version. Maximum length is 128 characters with pattern a-zA-Z0-9:_-]+.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-id
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ConnectorDefinitionVersion.Connector')]
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
        $ConnectorArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Parameters,
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
        $Id
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Parameters {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ConnectorDefinitionVersion.Connector'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
