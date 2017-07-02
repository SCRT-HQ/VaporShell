function Add-SAMApiEventSource {
    <#
    .SYNOPSIS
        Adds a Api Event Source to a Serverless Application Model resource

    .DESCRIPTION
        The object describing an event source with type Api.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#api

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .PARAMETER Path
        Required. Uri path for which this function is invoked. MUST start with /.

    .PARAMETER Method
        Required. HTTP method for which this function is invoked.

    .PARAMETER RestApiId
		Identifier of a RestApi resource which MUST contain an operation with the given path and method. Typically, this is set to reference an AWS::Serverless::Api resource defined in this template. If not defined, a default AWS::Serverless::Api resource is created using a generated Swagger document contains a union of all paths and methods defined by Api events defined in this template that do not specify a RestApiId.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource.Api')]
    [cmdletbinding()]
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
        $Path,
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
        $Method,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $RestApiId
    )
    $Params = @{
        LogicalId = $LogicalId
        Type = "Api"
        Properties = @{
            Path = $Path
            Method = $Method
        }
    }
    if ($RestApiId) {
        $Params["Properties"].Add("RestApiId",$RestApiId)
    }
    Add-SAMEventSource @Params | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource.Api'
}