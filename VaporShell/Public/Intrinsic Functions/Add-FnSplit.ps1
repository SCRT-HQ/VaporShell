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

        When the template is exported, this will convert to: {"Fn::Split":[",",{"Fn::ImportValue":"AccountSubnetIds"}]}

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
    [OutputType('Vaporshell.Function.Split')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [System.String]
        $Delimiter,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Condition.If","Vaporshell.Function.Base64","Vaporshell.Function.FindInMap","Vaporshell.Function.GetAtt","Vaporshell.Function.GetAZs","Vaporshell.Function.Join","Vaporshell.Function.Select","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $SourceString
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Split" = @($Delimiter,$SourceString)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.Split'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}