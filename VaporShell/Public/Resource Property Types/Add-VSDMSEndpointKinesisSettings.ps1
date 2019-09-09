function Add-VSDMSEndpointKinesisSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DMS::Endpoint.KinesisSettings resource property to the template. ## Syntax<a name="aws-properties-dms-endpoint-kinesissettings-syntax"></a>

    .DESCRIPTION
        Adds an AWS::DMS::Endpoint.KinesisSettings resource property to the template.
## Syntax<a name="aws-properties-dms-endpoint-kinesissettings-syntax"></a>

To declare this entity in your AWS CloudFormation template, use the following syntax:

### JSON<a name="aws-properties-dms-endpoint-kinesissettings-syntax.json"></a>



{

"MessageFormat: #cfn-dms-endpoint-kinesissettings-messageformat" : String,

"ServiceAccessRoleArn: #cfn-dms-endpoint-kinesissettings-serviceaccessrolearn" : String,

"StreamArn: #cfn-dms-endpoint-kinesissettings-streamarn" : String

}



### YAML<a name="aws-properties-dms-endpoint-kinesissettings-syntax.yaml"></a>



MessageFormat: #cfn-dms-endpoint-kinesissettings-messageformat: String

ServiceAccessRoleArn: #cfn-dms-endpoint-kinesissettings-serviceaccessrolearn: String

StreamArn: #cfn-dms-endpoint-kinesissettings-streamarn: String



## Properties<a name="aws-properties-dms-endpoint-kinesissettings-properties"></a>

MessageFormat  <a name="cfn-dms-endpoint-kinesissettings-messageformat"></a>

The output format for the records created on the endpoint. The message format is JSON.

*Required*: No

*Type*: String

*Allowed Values*: json

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

ServiceAccessRoleArn  <a name="cfn-dms-endpoint-kinesissettings-serviceaccessrolearn"></a>

The Amazon Resource Name (ARN for the IAM role that DMS uses to write to the Amazon Kinesis data stream.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

StreamArn  <a name="cfn-dms-endpoint-kinesissettings-streamarn"></a>

The Amazon Resource Name (ARN for the Amazon Kinesis Data Streams endpoint.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html

    .PARAMETER MessageFormat
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-messageformat
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER StreamArn
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-streamarn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ServiceAccessRoleArn
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-serviceaccessrolearn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DMS.Endpoint.KinesisSettings')]
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
        $MessageFormat,
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
        $StreamArn,
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
        $ServiceAccessRoleArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DMS.Endpoint.KinesisSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
