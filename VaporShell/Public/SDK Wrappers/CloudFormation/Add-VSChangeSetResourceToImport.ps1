function Add-VSChangeSetResourceToImport {
    <#
    .SYNOPSIS
    Creates a `Amazon.CloudFormation.Model.ResourceToImport` object to use for the value of parameter `ResourcesToImport` on `New-VSChangeSet`.

    .DESCRIPTION
    Creates a `Amazon.CloudFormation.Model.ResourceToImport` object to use for the value of parameter `ResourcesToImport` on `New-VSChangeSet`.

    .PARAMETER LogicalResourceId
    The LogicalId of the resource on the CloudFormation template in the Change Set.

    .PARAMETER ResourceIdentifier
    A hashtable containing information identifying the resource to import, e.g. `@{TableName = 'Games'}`.

    .PARAMETER ResourceType
    The CloudFormation resource type of the resource you would like to import.

    .EXAMPLE
    Add-VSChangeSetResourceToImport -LogicalResourceId GamesTable -ResourceIdentifier @{TableName = 'Games'} -ResourceType 'AWS::DynamoDB::Table'
    #>
    [CmdletBinding()]
    Param (
        [parameter(Mandatory)]
        [ValidateScript( {
            if ($_ -match "^[a-zA-Z0-9]*$") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalResourceId must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
            }
        })]
        [string]
        $LogicalResourceId,
        [parameter(Mandatory)]
        [hashtable]
        $ResourceIdentifier,
        [parameter(Mandatory)]
        [string]
        $ResourceType
    )
    Begin {
        Import-AWSSDK
        $identifier = New-Object 'System.Collections.Generic.Dictionary[string,string]'
        $resource = New-Object Amazon.CloudFormation.Model.ResourceToImport
        $ResourceIdentifier.GetEnumerator() | ForEach-Object {
            $identifier.Add($_.Key,$_.Value)
        }
    }
    Process {
        $resource.LogicalResourceId = $LogicalResourceId
        $resource.ResourceIdentifier = $identifier
        $resource.ResourceType = $ResourceType
        $resource
    }
}
