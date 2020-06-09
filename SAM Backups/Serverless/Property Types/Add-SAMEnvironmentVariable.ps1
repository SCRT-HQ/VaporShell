function Add-SAMEnvironmentVariable {
    <#
    .SYNOPSIS
        The object describing the environment properties of a function.

    .DESCRIPTION
        The object describing the environment properties of a function.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#environment-object

    .PARAMETER Hashtable
		A hashtable of environment variables

    .PARAMETER Name
        The name of the environment variable

    .PARAMETER Value
        The value of the environment variable

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EnvironmentVariable')]
    [cmdletbinding(DefaultParameterSetName="Single")]
    Param
    (
        [parameter(Mandatory = $true,Position=0,ParameterSetName="Hashtable")]
        [System.Collections.Hashtable]
        $Hashtable,
        [parameter(Mandatory = $true,Position=0,ParameterSetName="Single")]
        [System.String]
        $Name,
        [parameter(Mandatory = $true,Position=1,ParameterSetName="Single")]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Value
    )
    if (!$Hashtable) {
        $Hashtable = @{ $Name = $Value }
    }
    $obj =  @{ Variables = $Hashtable }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EnvironmentVariable'
}