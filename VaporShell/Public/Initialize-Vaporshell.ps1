function Initialize-Vaporshell {
    <#
    .SYNOPSIS
        The starting point for your template buildout. This should always be the first thing called in your template script.

    .DESCRIPTION
        The starting point for your template buildout. This should always be the first thing called in your template script.

        This creates a PSObject, custom typed as 'Vaporshell.Template'. It builds out the containers for Metadata, Parameters, Mappings, Conditions, Resources and Outputs.

    .PARAMETER FormatVersion
        The AWSTemplateFormatVersion section (optional) identifies the capabilities of the template. The latest template format version is 2010-09-09 and is currently the only valid value.

    .PARAMETER Description
        The template description. Total byte count for the description has to be greater than 0 but less than 1024.

    .EXAMPLE
        $Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([VSTemplate])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory = $false,Position = 0)]
        [ValidateScript( {[System.Text.Encoding]::UTF8.GetByteCount($_) -lt 1024 -and [System.Text.Encoding]::UTF8.GetByteCount($_) -gt 0})]
        [string]
        $Description,
        [parameter(Mandatory = $false)]
        [ValidateSet("2010-09-09")]
        [Alias('AWSTemplateFormatVersion')]
        [string]
        $FormatVersion
    )
    $obj = [VSTemplate]::new($PSBoundParameters)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
    $obj
}
