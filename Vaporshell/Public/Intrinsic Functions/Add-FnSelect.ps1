function Add-FnSelect {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Select" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::Select returns a single object from a list of objects by index.

        You can use Fn::Select to select an object from a CommaDelimitedList parameter. You might use a CommaDelimitedList parameter to combine the values of related parameters, which reduces the total number of parameters in your template.

            ** Important **
                Fn::Select does not check for null values or if the index is out of bounds of the array. Both conditions will result in a stack error, so you should be certain that the index you choose is valid, and that the list contains non-null values.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-select.html
    
    .PARAMETER Index
        The index of the object to retrieve. This must be a value from zero to N-1, where N represents the number of elements in the array.

    .PARAMETER ListOfObjects
        The list of objects to select from. This list must not be null, nor can it have null entries.

    .EXAMPLE
        Add-FnSelect -Index 2 -ListOfObjects (Add-FnSplit -Delimiter "," -SourceString (Add-FnImportValue -ValueToImport "AccountSubnetIds"))

        When the template is exported, this will convert to: {"Fn::Select":["2",{"Fn::Split":[",",{"Fn::ImportValue":"AccountSubnetIds"}]}]}

    .NOTES
        For the Fn::Select index value, you can use the Ref and Fn::FindInMap functions.

        For the Fn::Select list of objects, you can use the following functions:
            Fn::FindInMap
            Fn::GetAtt
            Fn::GetAZs
            Fn::If
            Fn::Split
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Function.Select')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.FindInMap","Vaporshell.Function.Ref","System.Int32","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $Index,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Condition.If","Vaporshell.Function.FindInMap","Vaporshell.Function.GetAtt","Vaporshell.Function.GetAZs","Vaporshell.Function.Split","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $ListOfObjects
    )
    $objCount = Get-TrueCount $ListOfObjects
    if ($objCount -eq 1) {
        $obj = [PSCustomObject][Ordered]@{
            "Fn::Select" = @($Index,$ListOfObjects)
        }
    }
    else {
        $obj = [PSCustomObject][Ordered]@{
            "Fn::Select" = @([string]$Index,@($ListOfObjects))
        }
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.Select'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}