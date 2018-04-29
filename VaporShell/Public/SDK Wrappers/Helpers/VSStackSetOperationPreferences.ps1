function VSStackSetOperationPreferences {
    [cmdletbinding(DefaultParameterSetName="FailureToleranceCountMaxConcurrentCount")]
    Param
    (
      [parameter(Mandatory=$true,Position=0,ParameterSetName="FailureToleranceCountMaxConcurrentCount")]
      [parameter(Mandatory=$true,Position=0,ParameterSetName="FailureToleranceCountMaxConcurrentPercentage")]
      [System.Int32]
      $FailureToleranceCount,
      [parameter(Mandatory=$true,Position=0,ParameterSetName="FailureTolerancePercentageMaxConcurrentCount")]
      [parameter(Mandatory=$true,Position=0,ParameterSetName="FailureTolerancePercentageMaxConcurrentPercentage")]
      [System.Int32]
      $FailureTolerancePercentage,
      [parameter(Mandatory=$true,Position=1,ParameterSetName="FailureToleranceCountMaxConcurrentCount")]
      [parameter(Mandatory=$true,Position=1,ParameterSetName="FailureTolerancePercentageMaxConcurrentCount")]
      [System.Int32]
      $MaxConcurrentCount,
      [parameter(Mandatory=$true,Position=1,ParameterSetName="FailureToleranceCountMaxConcurrentPercentage")]
      [parameter(Mandatory=$true,Position=1,ParameterSetName="FailureTolerancePercentageMaxConcurrentPercentage")]
      [System.Int32]
      $MaxConcurrentPercentage,
      [parameter(Mandatory=$false,Position=2)]
      [System.String[]]
      $RegionOrder
    )
    Write-Verbose "Parameter Set: $($PSCmdlet.ParameterSetName)"
    $obj = New-Object Amazon.CloudFormation.Model.StackSetOperationPreferences
    foreach ($key in $PSBoundParameters.Keys) {
        if ($obj.PSObject.Properties.Name -contains $key) {
            $obj.$key = $PSBoundParameters[$key]
        }
    }
    return $obj
}