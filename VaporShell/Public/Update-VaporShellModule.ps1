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
        $names = $params['Name'] | ForEach-Object {
            if ($_ -ne 'VaporShell') {
                "VaporShell.$_"
            }
            else {
                $_
            }
        }
        if ($notInstalled = $names | Where-Object {$_ -notin $installed.Name}) {
            Write-Verbose "The following modules are not installed yet and will be installed:`n- $($notInstalled -join "`n- ")"
            $installParams = $params
            $installParams['Name'] = $notInstalled

            if (($installParams.Keys -join '-') -match 'Version|Prerelease') {
                $installParams.Remove('Name') | Out-Null
                foreach ($mod in $alreadyInstalled) {
                    Install-Module -Name $mod @installParams
                }
            }
            else {
                Install-Module @installParams
            }

            $params['Name'] = $names | Where-Object {$_ -in $installed.Name}
        }
        Write-Verbose "Updating modules:`n- $($params['Name'] -join "`n- ")"
        if (($params.Keys -join '-') -match 'Version|Prerelease') {
            $list = $params['Name']
            $params.Remove('Name') | Out-Null
            foreach ($mod in $list) {
                Update-Module -Name $mod @params
            }
        }
        else {
            Update-Module @params
        }
    }
}