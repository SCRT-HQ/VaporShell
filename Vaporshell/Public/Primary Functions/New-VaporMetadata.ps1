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
        An identifier for the current condition. The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.
    
    .PARAMETER Metadata
        Key/Value pair.

        You can use any of these 3 types for this parameter; "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Metadata.Data"
    
    .PARAMETER NoEcho
        Whether to mask the parameter value whenever anyone makes a call that describes the stack. If you set the value to true, the parameter value is masked with asterisks (*****).

    .EXAMPLE
        $template = Initialize-Vaporshell -Description "Testing Mapping addition"
        $template.AddParameter(
            (New-VaporParameter -LogicalId "DBPort" -Default 3306 -Description "TCP/IP port for the database" -Type "Number" -MinValue 1150 -MaxValue 65535),
            (New-VaporParameter -LogicalId "DBPwd" -NoEcho -Description "The database admin account password" -Type "String" -MinLength 1 -MaxLength 41 -AllowedPattern "^[a-zA-Z0-9]*$")
        )

        # When the template is exported, this will convert to: 
            {
                "AWSTemplateFormatVersion":  "2010-09-09",
                "Description":  "Testing Mapping addition",
                "Parameters":  {
                    "DBPwd":  {
                        "Type":  "String",
                        "NoEcho":  {
                            "IsPresent":  true
                        },
                        "Description":  "The database admin account password",
                        "MinLength":  1,
                        "MaxLength":  41,
                        "AllowedPattern":  "^[a-zA-Z0-9]*$"
                    },
                    "DBPort":  {
                        "Type":  "Number",
                        "Default":  "3306",
                        "Description":  "TCP/IP port for the database",
                        "MinValue":  1150,
                        "MaxValue":  65535
                    }
                }
            }

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Metadata')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({
            if ($_ -match "^[a-zA-Z0-9]*$") {
                $true
            }
            else {
                throw 'The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
            }
        })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateScript({
            $allowedTypes = "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Resource.Properties"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The Metadata parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        $Metadata
    )
    $obj = [PSCustomObject][Ordered]@{
        "LogicalId" = $LogicalId
        "Data" = $Metadata
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Metadata'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$(@{$obj.LogicalId = $obj.Data} | ConvertTo-Json -Depth 5 -Compress)`n"
}