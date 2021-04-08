function Update-VaporShellModule {
    [CmdletBinding(DefaultParameterSetName = 'Name', SupportsShouldProcess, ConfirmImpact = 'Low')]
    Param(
        [parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName,Position = 0,ParameterSetName = 'Name')]
        [VaporShellModule[]]
        $Name,
        [parameter(ParameterSetName = 'All')]
        [switch]
        $All,
        [parameter()]
        [string]
        $MaximumVersion,
        [parameter()]
        [string]
        $RequiredVersion,
        [parameter()]
        [PSCredential]
        $Credential,
        [parameter()]
        [ValidateSet('AllUsers','CurrentUser')]
        [string]
        $Scope,
        [parameter()]
        [string]
        $Proxy,
        [parameter()]
        [PSCredential]
        $ProxyCredential,
        [parameter()]
        [switch]
        $Force,
        [parameter()]
        [switch]
        $AllowPrerelease,
        [parameter()]
        [switch]
        $PassThru
    )
    Begin {
        $installed = Get-Module VaporShell* -ListAvailable
    }
    Process {
        $params = $PSBoundParameters
        if ($PSCmdlet.ParameterSetName -eq 'All') {
            $params.Remove('All') | Out-Null
            $params['Name'] = [enum]::GetValues([VaporShellModule])
        }
        if ($notInstalled = $params['Name'] | Where-Object {$_ -notin $installed.Name}) {
            Write-Verbose "The following modules are not installed yet and will be installed:`n- $($notInstalled -join "`n- ")"
            $installParams = $params
            $installParams['Name'] = $notInstalled
            Install-Module @installParams

            $params['Name'] = $params['Name'] | Where-Object {$_ -in $installed.Name}
        }
        Write-Verbose "Updating modules:`n- $($params['Name'] -join "`n- ")"
        Update-Module @params
    }
}