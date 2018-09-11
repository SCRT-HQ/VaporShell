function Import-VSTemplateConfig {
    <#
    .SYNOPSIS
        Imports a configuration from either a JSON or PSD1 file at the specified key.

    .DESCRIPTION
        Imports a configuration from either a JSON or PSD1 file at the specified key.

    .PARAMETER Path
		The path to the configuration file. This can be relative or absolute

    .PARAMETER Key
        The key of the sub-configuration to return, i.e. "Dev".

    .EXAMPLE
        Import-VSTemplateConfig -Path .\WebServerConfig.psd1 -Key Prd

        Imports the "Prd" sub-configuration from the WebServerConfig.psd1 configuration file

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true, Position = 0)]
        [ValidateScript({Test-Path $_})]
        [String]
        $Path,
        [parameter(Mandatory = $true, Position = 1)]
        [String]
        $Key
    )
    try {
        $item = Get-Item $Path -ErrorAction Stop
        $contents = Get-Content $item.FullName -Raw -ErrorAction Stop
        $Global:VSConfig = switch ($item.Extension) {
            '.json' {
                $obj = ConvertFrom-Json -InputObject $contents -ErrorAction Stop
                [PSCustomObject]$obj.$key
            }
            '.psd1' {
                $sb = [scriptblock]::Create($contents)
                $hash = $sb.Invoke()
                [PSCustomObject]($hash.$Key)
            }
            Default {
                throw "$Path must be a JSON or PSD1 file!"
            }
        }
        Write-Verbose "Imported config:`n`n$(($Global:VSConfig | Out-String).Trim())"
        return $Global:VSConfig
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}
