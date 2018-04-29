function Add-SAMScheduleEventSource {
    <#
    .SYNOPSIS
        Adds a Schedule Event Source to a Serverless Application Model resource

    .DESCRIPTION
        The object describing an event source with type Schedule.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#schedule

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .PARAMETER Schedule
        Required. Uri Schedule for which this function is invoked. MUST start with /.

    .PARAMETER JSONInput
        JSON-formatted string to pass to the function as the event body.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource.Schedule')]
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
        [System.String]
        $Schedule,
        [parameter(Mandatory = $false)]
        [System.String]
        $JSONInput
    )
    $Params = @{
        LogicalId = $LogicalId
        Type = "Schedule"
        Properties = @{
            Schedule = $Schedule
        }
    }
    if ($JSONInput) {
        $Params["Properties"].Add("Input",$JSONInput)
    }
    Add-SAMEventSource @Params | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource.Schedule'
}