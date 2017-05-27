function Import-VaporTemplate {
    <#
    .SYNOPSIS
        Allows you to import an existing CloudFormation template as a starting point.
    
    .DESCRIPTION
        Allows you to import an existing CloudFormation template as a starting point.
    
    .PARAMETER Path
        The path to the existing template.

    .EXAMPLE
        $vaporTemplate = Import-VaporTemplate -Path "C:\CloudFormation\Templates\S3Bucket.json"

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({Test-Path $_})]
        [String]
        $Path
    )
    Get-Content $Path | ConvertFrom-Json
}