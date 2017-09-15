function New-VSError {
    <#
    .SYNOPSIS
    Error generator function to use in tandem with $PSCmdlet.ThrowTerminatingError()
    
    .PARAMETER Result
    Allows input of an error from AWS SDK, resulting in the Exception message being parsed out.
    
    .PARAMETER String
    Used to create basic String message errors in the same wrapper
    #>
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