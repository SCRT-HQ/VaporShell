function Add-UserData {
    <#
    .SYNOPSIS
        Adds UserData to a resource on the template. For single values (i.e. in AutoScaling Launch Configurations), it adds the single For multiple values, it automatically adds it as {"Fn::Base64": {"Fn::Join": ["",[VALUES...] ] } } to reduce the amount of scripting needed.
    
    .PARAMETER String
        An array of strings and/or Instrinsic Functions.

        IMPORTANT: You must specify new lines in Powershell syntax so it identifies it as a new line when converting to JSON via Export-Vaporshell. This will convert `n [backtick n] into \n [backslash n] in the resulting JSON template.
    
    .PARAMETER File
        The path of the script file to convert to UserData. This cannot contain any Intrinsic functions such as Ref in it. Use the String parameter if you'd like to include functions in the array.

    .EXAMPLE
        $EC2 = 

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
                    throw "The Properties parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $String,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName="File")]
        [ValidateScript( {
                if (Test-Path $_) {
                    $true
                }
                else {
                    throw "You must specify a valid file path -- unable to find the path $_"
                }
            })]
        [System.String]
        $File
    )
    Begin {
        $Values = @()
    }
    Process {
        switch ($PSBoundParameters.Keys) {
            'String' {
                $Values = $String
            }
            'File' {
                $Path = (Resolve-Path -Path $File).Path
                if ($Path -like "*.ps1") {
                    $Windows = $true
                    $tag = "powershell"
                }
                elseif ($Path -like "*.bat" -or $Path -like "*.cmd") {
                    $Windows = $true
                    $tag = "script"
                }
                else {
                    $Windows = $false
                }
                [System.Collections.ArrayList]$fileContents = Get-Content $Path
                do {
                    if ([string]::IsNullOrWhiteSpace($fileContents[0])){
                        $fileContents.RemoveAt(0)
                    }
                } until (!([string]::IsNullOrWhiteSpace($fileContents[0])))
                do {
                    $lastIndex = $fileContents.Count - 1
                    if ([string]::IsNullOrWhiteSpace($fileContents[$lastIndex])){
                        $fileContents.RemoveAt($lastIndex)
                    }
                } until (!([string]::IsNullOrWhiteSpace($fileContents[$lastIndex - 1])))
                if ($Windows) {
                    if ($fileContents[0] -notlike "<$($tag)>*") {
                        $Values += "<$($tag)>"
                    }
                }
                $fileContents | ForEach-Object {
                    $Values += "$($_)`n"
                }
                if ($Windows) {
                    if ($fileContents[$fileContents.Count - 1] -notlike "</$($tag)>*") {
                        $Values += "</$($tag)>"
                    }
                }
            }
        }
    }
    End {
        if ($Values.Count -gt 1) {
            $obj = Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues $Values)
        }
        else {
            $obj = Add-FnBase64 -ValueToEncode ($Values | Select-Object -First 1)
        }
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.UserData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5)`n"
    }
}