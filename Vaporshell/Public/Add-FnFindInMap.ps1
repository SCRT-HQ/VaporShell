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
        $MapName,
        [parameter(Mandatory = $true,Position = 1)]
        $TopLevelKey,
        [parameter(Mandatory = $true,Position = 2)]
        $SecondLevelKey
    )
    $obj = New-Object PSObject -Property @{
        "Fn::FindInMap" = @($MapName,$TopLevelKey,$SecondLevelKey)
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}