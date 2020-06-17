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
    [OutputType([VSTemplate])]
    [cmdletbinding(DefaultParameterSetName = "Path")]
    Param
    (
        [parameter(Mandatory,Position = 0,ParameterSetName = "Path")]
        [Alias("FullName")]
        [ValidateScript( {Test-Path $_})]
        [String]
        $Path,
        [parameter(Mandatory,Position = 0,ValueFromPipeline,ParameterSetName = "TemplateBody")]
        [String]
        $TemplateBody,
        [parameter(Mandatory,Position = 0,ParameterSetName = "RawUrl")]
        [String]
        $RawUrl
    )
    Process {
        $finalString = $PSBoundParameters[$PSCmdlet.ParameterSetName] -join [System.Environment]::NewLine
        $obj = [VSTemplate]::new($finalString)
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
        $obj
    }
}
