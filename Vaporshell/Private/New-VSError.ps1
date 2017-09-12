function New-VSError {
    [cmdletbinding(DefaultParameterSetName="Result")]
    param(
        [parameter(Position=0,ParameterSetName="Result")]
        $Result,
        [parameter(Position=0,ParameterSetName="String")]
        $String
    )
    switch ($PSCmdlet.ParameterSetName) {
        Result { $Exception = "$($result.Exception.InnerException.Message)" }
        String { $Exception = "$String" }
    }
    $e = New-Object "System.Exception" $Exception
    $errorRecord = New-Object 'System.Management.Automation.ErrorRecord' $e, $null, ([System.Management.Automation.ErrorCategory]::InvalidOperation), $null
    return $errorRecord
}