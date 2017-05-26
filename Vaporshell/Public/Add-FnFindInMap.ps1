function Add-FnFindInMap {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [String]
        $MapName,
        [parameter(Mandatory = $false,Position = 1)]
        [Object]
        $MapNameFn,
        [parameter(Mandatory = $false,Position = 2)]
        [String]
        $TopLevelKey,
        [parameter(Mandatory = $false,Position = 3)]
        [Object]
        $TopLevelKeyFn,
        [parameter(Mandatory = $false,Position = 4)]
        [String]
        $SecondLevelKey,
        [parameter(Mandatory = $false,Position = 5)]
        [Object]
        $SecondLevelKeyFn
    )
    if ($MapName -and $MapNameFn) {
        throw "Do not use both MapName and MapNameFn parameters, use one or the other."
    }
    elseif ($MapName) {
        $MN = $MapName
    }
    elseif ($MapNameFn) {
        $MN = $MapNameFn
    }
    else {
        throw "You must include either MapName or MapNameFn as a parameter."
    }
    if ($TopLevelKey -and $TopLevelKeyFn) {
        throw "Do not use both TopLevelKey and TopLevelKeyFn parameters, use one or the other."
    }
    elseif ($TopLevelKey) {
        $TLK = $TopLevelKey
    }
    elseif ($TopLevelKeyFn) {
        $TLK = $TopLevelKeyFn
    }
    else {
        throw "You must include either TopLevelKey or TopLevelKeyFn as a parameter."
    }
    if ($SecondLevelKey -and $SecondLevelKeyFn) {
        throw "Do not use both SecondLevelKey and SecondLevelKeyFn parameters, use one or the other."
    }
    elseif ($SecondLevelKey) {
        $SLK = $SecondLevelKey
    }
    elseif ($SecondLevelKeyFn) {
        $SLK = $SecondLevelKeyFn
    }
    else {
        throw "You must include either SecondLevelKey or SecondLevelKeyFn as a parameter."
    }
    New-Object PSObject -Property @{
        "Fn::FindInMap" = @($MN,$TLK,$SLK)
    }
}