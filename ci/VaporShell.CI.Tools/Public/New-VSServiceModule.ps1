function New-VSServiceModule {
    [CmdletBinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [string]
        $ModuleName,
        [parameter(Mandatory,Position = 1)]
        [string]
        $ModuleVersion
    )
    Begin {
        $cleanModuleVersion = ($ModuleVersion.Split('.')[0..1] + '0') -join '.'
        $serviceModuleTemplate = [System.IO.Path]::Combine($PSScriptRoot,'..','..','..','ServiceModuleTemplate')
        $serviceModulePath = [System.IO.Path]::Combine($PSScriptRoot,'..','..','..','ServiceModules')
        $modulePath = [System.IO.Path]::Combine($serviceModulePath,$ModuleName)
        $metadataPath = [System.IO.Path]::Combine($modulePath,"$ModuleName.psd1")
    }
    Process {
        if (-not (Test-Path $metadataPath)) {
            Write-BuildLog "Generating service module: $ModuleName"
            $null = New-Item $modulePath -ItemType Directory -Force
            Get-ChildItem $serviceModuleTemplate | Copy-Item -Destination $modulePath -Container -Recurse -Force
            Get-ChildItem $modulePath -Filter 'ServiceModuleTemplate.ps*' -Recurse -File | ForEach-Object {
                $item = $_
                $item | Rename-Item -NewName "$($ModuleName)$($item.Extension)" -Force
            }
            $guid = if ($mod = Find-Module "$ModuleName*" -Repository PSGallery -ErrorAction SilentlyContinue | Where-Object {$_.Name -eq $ModuleName}) {
                $mod.AdditionalMetadata.GUID
            }
            else {
                (New-Guid).Guid
            }
            Update-Metadata -Path $metadataPath -PropertyName RootModule -Value "$ModuleName.psm1"
            Update-Metadata -Path $metadataPath -PropertyName GUID -Value $guid
        }
        else {
            Write-BuildLog "Service module '$ModuleName' already exists at target path"
        }
        Update-Metadata -Path $metadataPath -PropertyName ModuleVersion -Value $cleanModuleVersion
        Update-Metadata -Path $metadataPath -PropertyName RequiredModules -Value @(@{ModuleName = 'VaporShell';ModuleVersion = $cleanModuleVersion})
    }
}
