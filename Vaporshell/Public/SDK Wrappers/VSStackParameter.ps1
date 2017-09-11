function VSStackParameter {
    Param
    (
      [parameter(Mandatory=$false,Position=0)]
      [System.String]
      $ParameterKey,
      [parameter(Mandatory=$false,Position=1)]
      [System.String]
      $ParameterValue,
      [parameter(Mandatory=$false,Position=2)]
      [System.Boolean]
      $UsePreviousValue
    )
    New-Object Amazon.CloudFormation.Model.Parameter -Property $PSBoundParameters
}