function Add-SAMEventSource {
    <#
    .SYNOPSIS
        Adds a Serverless Application Model Event Source

    .DESCRIPTION
        Adds a Serverless Application Model Event Source

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#event-source-object

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .PARAMETER Type
        Required. Event type.

    .PARAMETER Properties
		Required. Hashtable describing properties of this event mapping. Must conform to the defined Type

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource')]
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
        $Type,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Properties
    )
    $obj = [PSCustomObject]@{
        $LogicalId = @{
            Type = $Type
            Properties = $Properties
        }
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource'
}