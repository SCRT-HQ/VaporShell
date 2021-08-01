function Update-VaporShellServiceModule {
    [CmdletBinding(DefaultParameterSetName = 'Name', SupportsShouldProcess, ConfirmImpact = 'Low')]
    Param(
        [parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName,Position = 0,ParameterSetName = 'Name')]
        [VaporShellServiceModule[]]
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
            $params['Name'] = [enum]::GetValues([VaporShellServiceModule])
        }
        $params['Name']  = $params['Name'] | ForEach-Object {
            if ($_ -notmatch '^VaporShell') {
                "VaporShell.$_"
            }
            else {
                $_
            }
        }

        $notInstalled = $params['Name'] | Where-Object {$_ -notin $installed.Name}
        $alreadyInstalled = $params['Name'] | Where-Object {$_ -in $installed.Name}

        if ($notInstalled) {
            Write-Verbose "The following modules are not installed yet and will be installed:`n- $($notInstalled -join "`n- ")"
            if (($params.Keys -join '-') -match 'Version|Prerelease') {
                $params.Remove('Name') | Out-Null
                foreach ($mod in $notInstalled) {
                    Install-Module -Name $mod @params
                }
            }
            else {
                $params['Name'] = $notInstalled
                Install-Module @params
            }
        }
        if ($alreadyInstalled) {
            Write-Verbose "Updating modules:`n- $($alreadyInstalled -join "`n- ")"
            $updateParams = $params
            $updateParams['Name'] = $alreadyInstalled

            if (($updateParams.Keys -join '-') -match 'Version|Prerelease') {
                $updateParams.Remove('Name') | Out-Null
                foreach ($mod in $alreadyInstalled) {
                    Update-Module -Name $mod @updateParams
                }
            }
            else {
                Update-Module @updateParams
            }
        }
    }
}