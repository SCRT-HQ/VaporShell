function Get-TrueCount {
    Param
    (
        [parameter(Mandatory = $false,Position = 0,ValueFromPipeline = $true)]
        $Array
    )
    Process {
        if ($array) {
            if ($array.Count) {
                $count = $array.Count
            }
            else {
                $count = 1
            }
        }
        else {
            $count = 0
        }
    }
    End {
        return $count
    }
}