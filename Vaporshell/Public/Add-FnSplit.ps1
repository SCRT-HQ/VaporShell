function Add-FnSplit {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Split" to a resource property
    
    .DESCRIPTION
        To split a string into a list of string values so that you can select an element from the resulting string list, use the Fn::Split intrinsic function. Specify the location of splits with a delimiter, such as , (a comma). After you split a string, use the Fn::Select function to pick a specific element.

        For example, if a comma-delimited string of subnet IDs is imported to your stack template, you can split the string at each comma. From the list of subnet IDs, use the Fn::Select intrinsic function to specify a subnet ID for a resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-split.html
    
    .PARAMETER Delimiter
        A string value that determines where the source string is divided.

    .PARAMETER SourceString
        The string value that you want to split. This can be a string or object from an Add-Fn* function output

    .EXAMPLE
        Add-FnSplit -Delimiter "," -SourceString (Add-FnImportValue -ValueToImport "AccountSubnetIds")

        # When the template is exported, this will convert to: {"Fn::Split":[",",{"Fn::ImportValue":"AccountSubnetIds"}]}

    .NOTES
        For the Fn::Split delimiter, you cannot use any functions. You must specify a string value.

        For the Fn::Split list of values (SourceString), you can use the following functions:
            Fn::Base64
            Fn::FindInMap
            Fn::GetAtt
            Fn::GetAZs
            Fn::If
            Fn::Join
            Fn::Select
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $Delimiter,
        [parameter(Mandatory = $true,Position = 1)]
        [object]
        $SourceString
    )
    $obj = New-Object PSObject -Property @{
        "Fn::Split" = @($Delimiter,$SourceString)
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}