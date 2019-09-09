function Add-VSDMSEndpointElasticsearchSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DMS::Endpoint.ElasticsearchSettings resource property to the template. ## Syntax<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax"></a>

    .DESCRIPTION
        Adds an AWS::DMS::Endpoint.ElasticsearchSettings resource property to the template.
## Syntax<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax"></a>

To declare this entity in your AWS CloudFormation template, use the following syntax:

### JSON<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax.json"></a>



{

"EndpointUri: #cfn-dms-endpoint-elasticsearchsettings-endpointuri" : String,

"ErrorRetryDuration: #cfn-dms-endpoint-elasticsearchsettings-errorretryduration" : Integer,

"FullLoadErrorPercentage: #cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage" : Integer,

"ServiceAccessRoleArn: #cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn" : String

}



### YAML<a name="aws-properties-dms-endpoint-elasticsearchsettings-syntax.yaml"></a>



EndpointUri: #cfn-dms-endpoint-elasticsearchsettings-endpointuri: String

ErrorRetryDuration: #cfn-dms-endpoint-elasticsearchsettings-errorretryduration: Integer

FullLoadErrorPercentage: #cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage: Integer

ServiceAccessRoleArn: #cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn: String



## Properties<a name="aws-properties-dms-endpoint-elasticsearchsettings-properties"></a>

EndpointUri  <a name="cfn-dms-endpoint-elasticsearchsettings-endpointuri"></a>

The endpoint for the ElasticSearch cluster.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

ErrorRetryDuration  <a name="cfn-dms-endpoint-elasticsearchsettings-errorretryduration"></a>

The maximum number of seconds that DMS retries failed API requests to the Elasticsearch cluster.

*Required*: No

*Type*: Integer

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

FullLoadErrorPercentage  <a name="cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage"></a>

The maximum percentage of records that can fail to be written before a full load operation stops.

*Required*: No

*Type*: Integer

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

ServiceAccessRoleArn  <a name="cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn"></a>

The Amazon Resource Name (ARN used by service to access the IAM role.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html

    .PARAMETER EndpointUri
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-endpointuri
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER FullLoadErrorPercentage
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ErrorRetryDuration
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-errorretryduration
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ServiceAccessRoleArn
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DMS.Endpoint.ElasticsearchSettings')]
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
        $EndpointUri,
        [parameter(Mandatory = $false)]
        [Int]
        $FullLoadErrorPercentage,
        [parameter(Mandatory = $false)]
        [Int]
        $ErrorRetryDuration,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DMS.Endpoint.ElasticsearchSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
