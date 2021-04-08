function Install-VaporShellModule {
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
        $MinimumVersion,
        [parameter()]
        [string]
        $MaximumVersion,
        [parameter()]
        [string]
        $RequiredVersion,
        [parameter()]
        [string[]]
        $Repository,
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
        $AllowClobber,
        [parameter()]
        [switch]
        $SkipPublisherCheck,
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
        if ($alreadyInstalled = $params['Name'] | Where-Object {$_ -in $installed.Name}) {
            Write-Verbose "The following modules are already installed and will be updated instead:`n- $($notInstalled -join "`n- ")"
            $updateParams = $params
            $updateParams['Name'] = $alreadyInstalled
            Update-Module @updateParams

            $params['Name'] = $params['Name'] | Where-Object {$_ -notin $installed.Name}
        }
        Write-Verbose "Installing modules:`n- $($params['Name'] -join "`n- ")"
        Install-Module @params
    }
}