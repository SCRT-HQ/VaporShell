function Add-Variable {
    [OutputType('Vaporshell.Helper.Variable')]
    [cmdletbinding()]
    Param
    (
      [parameter(Mandatory=$true,Position=0)]
      [ValidatePattern("[A-Za-z0-9-._~:/?#&amp;=,]+")]
      [String]
      $Name,
      [parameter(Mandatory=$true,Position=1)]
      [String]
      $Value
    )
    $obj = [PSCustomObject]@{
        "$Name" = "$Value"
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Helper.Variable'
}