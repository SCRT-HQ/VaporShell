function Add-FnFindInMap {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::FindInMap" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::FindInMap returns the value corresponding to keys in a two-level map that is declared in the Mappings section.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html
    
    .PARAMETER MapName
        The logical name of a mapping declared in the Mappings section that contains the keys and values. The value can be another function.

    .PARAMETER TopLevelKey
        The top-level key name. Its value is a list of key-value pairs. The value can be another function.

    .PARAMETER SecondLevelKey
        The second-level key name, which is set to one of the keys from the list assigned to TopLevelKey. The value can be another function.

    .EXAMPLE
        Add-FnFindInMap -MapName "RegionMap" -TopLevelKey (Add-FnRef -Ref $_AWSRegion) -SecondLevelKey "32"

        # When the template is exported, this will convert to: {"Fn::FindInMap":["RegionMap",{"Ref":"AWS::Region"},"32"]}

    .NOTES
        You can use the following functions in a Fn::FindInMap function:
            Fn::FindInMap
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.FindInMap","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The MapName parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        $MapName,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.FindInMap","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The TopLevelKey parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        $TopLevelKey,
        [parameter(Mandatory = $true,Position = 2)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.FindInMap","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The SecondLevelKey parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        $SecondLevelKey
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::FindInMap" = @($MapName,$TopLevelKey,$SecondLevelKey)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.FindInMap'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}