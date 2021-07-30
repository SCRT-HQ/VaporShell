if ($null -eq (Get-Module 'PSProfile*' -ListAvailable)) {
    Get-PackageProvider NuGet -ForceBootstrap -Verbose
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

    Install-Module PowerShellGet -Repository PSGallery -Verbose -Force
    $Dependencies = @(
        @{
            Name = 'Configuration'
        }
        @{
            Name = 'InvokeBuild'
            MinimumVersion = '5.5.2'
        }
        @{
            Name = 'PSScriptAnalyzer'
        }
        @{
            Name = 'powershell-yaml'
        }
        @{
            Name = 'PSProfile'
        }
        @{
            Name = 'PoshRSJob'
        }
        @{
            Name = 'AWS.Tools.CloudFormation'
        }
        @{
            Name           = 'Pester'
            MinimumVersion = '4.10.1'
            MaximumVersion = '4.99.99'
        }
        @{
            Name           = 'Assert'
            MinimumVersion = '0.9.5'
        }
    )
    foreach ($module in $Dependencies) {
        Install-Module @module -Repository PSGallery -Scope AllUsers -Verbose
    }
}