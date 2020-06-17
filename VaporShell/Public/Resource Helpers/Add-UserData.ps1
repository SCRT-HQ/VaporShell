function Add-UserData {
    <#
    .SYNOPSIS
        Adds UserData to a resource on the template. For single values (i.e. in AutoScaling Launch Configurations), it adds the single For multiple values, it automatically adds it as {"Fn::Base64": {"Fn::Join": ["",[VALUES...] ] } } to reduce the amount of scripting needed.

    .PARAMETER String
        An array of strings and/or Instrinsic Functions.

        IMPORTANT: You must specify new lines in Powershell syntax so it identifies it as a new line when converting to JSON via Export-Vaporshell. This will convert `n [backtick n] into \n [backslash n] in the resulting JSON template.

    .PARAMETER File
        The path of the script file to convert to UserData. This cannot contain any Intrinsic functions such as Ref in it. Use the String parameter if you'd like to include functions in the array.

    .PARAMETER Replace
        A hashtable of keys to replace in your UserData file with the corresponding values.

    .PARAMETER Persist
        If true and the UserData file does not already include it, adds the <persist>true</persist> tag to the end of the UserData file.

    .PARAMETER UseJoin
        If true, uses Fn::Join to add the UserData contents as an array of strings. If false or excluded, content is

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([UserData])]
    [cmdletbinding(DefaultParameterSetName="String")]
    Param(
        [parameter(Mandatory = $true,Position = 0,ParameterSetName="String")]
        [object]
        $String,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName="File")]
        [ValidateScript( {
                if (Test-Path $_) {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "You must specify a valid file path -- unable to find the path $_"))
                }
            })]
        [string]
        $File,
        [parameter(Mandatory = $false)]
        [System.Collections.IDictionary]
        $Replace = @{},
        [parameter(Mandatory = $false)]
        [switch]
        $Persist,
        [parameter(Mandatory = $false)]
        [switch]
        $UseJoin
    )
    Process {
        $joined = switch ($PSBoundParameters.Keys) {
            'String' {
                if ($String -is [string]) {
                    [UserData]::Transform($Persist,$UseJoin,$Replace,$String)
                }
                else {
                    [UserData]::Transform($String)
                }
            }
            'File' {
                [UserData]::Transform($Persist,$UseJoin,$Replace,$File)
            }
        }
        $obj = [UserData]::new($joined)
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
        $obj
    }
}
