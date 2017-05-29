function Import-Vaporshell {
    <#
    .SYNOPSIS
        Allows you to import an existing CloudFormation template as a starting point.
    
    .DESCRIPTION
        Allows you to import an existing CloudFormation template as a starting point.
    
    .PARAMETER Path
        The path to the existing template.

    .EXAMPLE
        $Template = Import-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json"

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
    $tempObj = Get-Content $Path | ConvertFrom-Json
    $tempObj | Add-ObjectDetail -TypeName 'Vaporshell.Template'
}