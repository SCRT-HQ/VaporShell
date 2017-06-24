function Add-SAMAlexaSkillEventSource {
    <#
    .SYNOPSIS
        Adds an AlexaSkill Event Source to a Serverless Application Model resource

    .DESCRIPTION
        The object describing an event source with type AlexaSkill.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#alexaskill

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource.AlexaSkill')]
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
        $LogicalId
    )
    $Params = @{
        LogicalId = $LogicalId
        Type = "AlexaSkill"
    }
    Add-SAMEventSource @Params | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource.AlexaSkill'
}