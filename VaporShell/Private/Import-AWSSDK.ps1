function Import-AWSSDK {
    [CmdletBinding()]
    Param()
    Process {
        # Load the AWSSDK assemblies without conflict and kill any warning messages thrown by AWS.Tools.* modules
        try {
            $currentWarningPref = $WarningPreference
            $WarningPreference = "SilentlyContinue"
            $currentErrorPref = $ErrorActionPreference
            $ErrorActionPreference = "SilentlyContinue"
            $awsModules = if ($tools = (Get-Module AWS.Tools* -ListAvailable -Verbose:$false).Name | Where-Object {$_ -match '^AWS\.Tools\.(CloudFormation|S3)$'}) {
                $tools | Select-Object -Unique
            }
            else {
                (Get-Module AWS* -ListAvailable -Verbose:$false).Name | Select-Object -Unique
            }
            @(
                'AWSSDK.CloudFormation.dll'
                'AWSSDK.S3.dll'
            ) | ForEach-Object {
                $assemblyName = $_
                if ($null -eq ([System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {$_.Location -match $assemblyName})) {
                    $toolsModule = switch ($assemblyName) {
                        'AWSSDK.CloudFormation.dll' {'AWS.Tools.CloudFormation'}
                        'AWSSDK.S3.dll' {'AWS.Tools.S3'}
                    }
                    if ($awsModules -contains $toolsModule) {
                        Write-Verbose "Importing $assemblyName via module $toolsModule"
                        Import-Module $toolsModule -Verbose:$false -ErrorAction SilentlyContinue
                    }
                    elseif ($awsModules -contains 'AWSPowerShell.NetCore') {
                        Write-Verbose "Importing $assemblyName via module AWSPowerShell.NetCore"
                        Import-Module 'AWSPowerShell.NetCore' -Verbose:$false -ErrorAction SilentlyContinue
                    }
                    elseif ($awsModules -contains 'AWSPowerShell') {
                        Write-Verbose "Importing $assemblyName via module AWSPowerShell"
                        Import-Module 'AWSPowerShell' -Verbose:$false -ErrorAction SilentlyContinue
                    }
                    else {
                        Write-Verbose "Importing $assemblyName from VaporShell module base"
                        [System.Reflection.Assembly]::LoadFrom((Join-Path $PSScriptRoot $assemblyName)) | Out-Null
                    }
                }
            }
        }
        catch {}
        finally {
            $WarningPreference = $currentWarningPref
            $ErrorActionPreference = $currentErrorPref
        }
    }
}
