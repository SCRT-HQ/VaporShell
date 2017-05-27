function Import-VaporTemplate {
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