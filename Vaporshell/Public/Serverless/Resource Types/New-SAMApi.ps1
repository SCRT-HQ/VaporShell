function New-SAMApi {
    <#
    .SYNOPSIS
        Adds an AWS::Serverless::Api resource to the template

    .DESCRIPTION
        Creates a collection of Amazon API Gateway resources and methods that can be invoked through HTTPS endpoints.

        An AWS::Serverless::Api resource need not be explicitly added to a AWS Serverless Application Definition template. A resource of this type is implicitly created from the union of Api events defined on AWS::Serverless::Function resources defined in the template that do not refer to an AWS::Serverless::Api resource. An AWS::Serverless::Api resource should be used to define and document the API using Swagger, which provides more ability to configure the underlying Amazon API Gateway resources.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER StageName
        Required. The name of the stage, which API Gateway uses as the first path segment in the invoke Uniform Resource Identifier (URI).

    .PARAMETER DefinitionUri
		Required. S3 URI or location to the Swagger document describing the API. Either one of DefinitionUri or DefinitionBody must be specified. 

    .PARAMETER DefinitionBody
		Required. Swagger specification that describes your API. Either one of DefinitionUri or DefinitionBody must be specified.

    .PARAMETER CacheClusterEnabled
		Indicates whether cache clustering is enabled for the stage.

    .PARAMETER CacheClusterSize
		The stage's cache cluster size.

    .PARAMETER Variables
		A hashtable (string to string map) that defines the stage variables, where the variable name is the key and the variable value is the value. Variable names are limited to alphanumeric characters. Values must match the following regular expression: [A-Za-z0-9._~:/?#&amp;=,-]+.

    .NOTES
        Return values  

        Ref
        When the logical ID of this resource is provided to the Ref intrinsic function, it returns the resource name of the underlying API Gateway RestApi.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.Api')]
    [cmdletbinding(DefaultParameterSetName="DefinitionUri")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    throw 'The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $StageName,
        [parameter(Mandatory = $true,ParameterSetName="DefinitionUri")]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Serverless.S3LocationObject","System.String"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $DefinitionUri,
        [parameter(Mandatory = $true,ParameterSetName="DefinitionBody")]
        [System.String]
        $DefinitionBody,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DescripCacheClusterEnabledtion,
        [parameter(Mandatory = $false)]
        [System.String]
        $CacheClusterSize,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Variables
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::Serverless::Api"
        }
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                'LogicalId' {}
                Default {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $val = $((Get-Variable $key).Value)
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $val
                }
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.Api'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}