function New-VaporMetadata {
    <#
    .SYNOPSIS
        Adds a Metadata object to the template

    .DESCRIPTION
        You can use the optional Metadata section to include arbitrary JSON or YAML objects that provide details about the template.

        ** Important **
            During a stack update, you cannot update the Metadata section by itself. You can update it only when you include changes that add, modify, or delete resources.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html

    .PARAMETER LogicalId
        The key of the metadata. The LogicalID must contain only alphanumeric characters or colons (a-z, A-Z, 0-9, :, ::) and unique within the template.

    .PARAMETER Metadata
        Key/Value pair.

        You can use any of these 3 types for this parameter; "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Metadata.Data"

    .EXAMPLE
        $template = Initialize-Vaporshell -Description "Testing Metadata addition"
        $template.AddMetadata(
            (New-VaporMetadata -LogicalId "Instances" -Metadata [PSCustomObject]@{"Description" = "Information about the instances"}),
            (New-VaporMetadata -LogicalId "Databases" -Metadata [PSCustomObject]@{"Description" = "Information about the databases"})
        )

        When the template is exported, this will convert to:
            {
                "AWSTemplateFormatVersion":  "2010-09-09",
                "Description":  "Testing Metadata addition",
                "Metadata":  {
                    "Instances":  {
                        "Description":  "Information about the instances"
                    },
                    "Databases":  {
                        "Description":  "Information about the databases"
                    }
                }
            }

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([VSMetadata])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [string]
        [Alias('Key')]
        $LogicalId,
        [parameter(Mandatory,Position = 1)]
        [object]
        $Metadata
    )
    $obj = [VSMetadata]::new($PSBoundParameters)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj.ToJson($true))`n"
    $obj
}
