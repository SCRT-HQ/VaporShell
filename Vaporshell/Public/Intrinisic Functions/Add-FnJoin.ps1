function Add-FnJoin {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Join" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::Join appends a set of values into a single value, separated by the specified delimiter. If a delimiter is the empty string, the set of values are concatenated with no delimiter.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html
    
    .PARAMETER Delimiter
        The value you want to occur between fragments. The delimiter will occur between fragments only. It will not terminate the final value.

        This is not required. If you want to join without an added delimiter, simply exclude this parameter.

    .PARAMETER ListOfValues
        The list of values you want combined.

    .EXAMPLE
        Add-FnSelect -Index 2 -ListOfObjects (Add-FnSplit -Delimiter "," -SourceString (Add-FnImportValue -ValueToImport "AccountSubnetIds"))

        # When the template is exported, this will convert to: {"Fn::Select":["2",{"Fn::Split":[",",{"Fn::ImportValue":"AccountSubnetIds"}]}]}

    .NOTES
        For the Fn::Join delimiter, you cannot use any functions. You must specify a string value.

        For the Fn::Join list of values, you can use the following functions:
            Fn::Base64
            Fn::FindInMap
            Fn::GetAtt
            Fn::GetAZs
            Fn::If
            Fn::Join
            Fn::Split
            Fn::Select
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [System.String]
        $Delimiter = $null,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Condition.If","Vaporshell.Function.Base64","Vaporshell.Function.FindInMap","Vaporshell.Function.GetAtt","Vaporshell.Function.GetAZs","Vaporshell.Function.Join","Vaporshell.Function.Select","Vaporshell.Function.Split","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The ListOfValues parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        [object[]]
        $ListOfValues
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Join" = @($Delimiter,@($ListOfValues))
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.Join'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}