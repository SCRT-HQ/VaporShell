function Add-SAMCloudWatchEventEventSource {
    <#
    .SYNOPSIS
        Adds a CloudWatchEvent Event Source to a Serverless Application Model resource

    .DESCRIPTION
        The object describing an event source with type CloudWatchEvent.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#cloudwatchevent

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .PARAMETER Pattern
        Required. Pattern describing which CloudWatch events trigger the function. Only matching events trigger the function.

        http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html

    .PARAMETER JSONInput
        JSON-formatted string to pass to the function as the event body.

    .PARAMETER InputPath
        JSONPath describing the part of the event to pass to the function.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource.CloudWatchEvent')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true)]
        $Pattern,
        [parameter(Mandatory = $false)]
        [System.String]
        $JSONInput,
        [parameter(Mandatory = $false)]
        [System.String]
        $InputPath
    )
    $Params = @{
        LogicalId = $LogicalId
        Type = "CloudWatchEvent"
        Properties = @{
            Pattern = $Pattern
        }
    }
    if ($JSONInput) {
        $Params["Properties"].Add("Input",$JSONInput)
    }
    if ($InputPath) {
        $Params["Properties"].Add("InputPath",$InputPath)
    }
    Add-SAMEventSource @Params | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource.CloudWatchEvent'
}