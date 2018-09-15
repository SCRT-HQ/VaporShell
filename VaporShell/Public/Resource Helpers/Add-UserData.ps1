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
    [OutputType('Vaporshell.Resource.UserData')]
    [cmdletbinding(DefaultParameterSetName="String")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ParameterSetName="String")]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
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
        [System.String]
        $File,
        [parameter(Mandatory = $false)]
        [hashtable]
        $Replace,
        [parameter(Mandatory = $false)]
        [switch]
        $Persist,
        [parameter(Mandatory = $false)]
        [switch]
        $UseJoin
    )
    Begin {
        $Values = ""
    }
    Process {
        switch ($PSBoundParameters.Keys) {
            'String' {
                $Values += $String
            }
            'File' {
                $item = Get-Item $File
                switch ($item.Extension) {
                    '.ps1' {
                        $Windows = $true
                        $tag = "powershell"
                    }
                    '.bat' {
                        $Windows = $true
                        $tag = "script"
                    }
                    '.cmd' {
                        $Windows = $true
                        $tag = "script"
                    }
                    Default {
                        $Windows = $false
                    }
                }
                $fileContents = ([System.IO.File]::ReadAllLines($item.FullName) | Where-Object {$_}) -join "`n"
                if ($Windows -and $fileContents -notlike "<$($tag)>*") {
                    if ($fileContents[0] -notlike "<$($tag)>`n*") {
                        $Values += "<$($tag)>`n"
                    }
                }
                $Values += $fileContents
                if ($Windows -and $fileContents -notlike "*</$($tag)>*") {
                    $Values += "`n</$($tag)>"
                }
                if ($Persist -and $fileContents -notlike "*<persist>true</persist>*") {
                    $Values += "`n<persist>true</persist>"
                }
            }
        }
    }
    End {
        if ($PSBoundParameters.Keys -contains 'Replace') {
            foreach ($key in $PSBoundParameters['Replace'].Keys) {
                Write-Verbose "Replacing [$key] with [$($PSBoundParameters['Replace'][$key])]"
                $Values = $Values.Replace($key,$PSBoundParameters['Replace'][$key])
            }
        }
        if ($UseJoin) {
            $obj = Add-FnBase64 -ValueToEncode (Add-FnJoin "" ($Values -split "`n") -Verbose:$false) -Verbose:$false
        }
        else {
            $obj = Add-FnBase64 -ValueToEncode $Values -Verbose:$false
        }
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.UserData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
