function Import-AWSSDK {
    [cmdletbinding()]
    Param()
    if (!([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {$_.Location -like "*AWSSDK.CloudFormation.dll"})) {
        if ($IsCoreCLR) {
            Write-Verbose "Loading AWS SDK for *NetCore*!"
            $sdkPath = (Join-Path $Script:VaporshellPath "bin\NetCore" -Resolve)
        }
        else {
            Write-Verbose "Loading AWS SDK for *Net45*!"
            $sdkPath = (Join-Path $Script:VaporshellPath "bin\Net45" -Resolve)
        }
        Get-ChildItem $sdkPath -Filter "*.dll" | ForEach-Object {
            [reflection.assembly]::LoadFrom("$($_.FullName)") | Out-Null
        }
    }
    else {
        if ($IsCoreCLR) {
            Write-Verbose "AWS SDK for *NetCore* is already loaded, continuing module import"
        }
        else {
            Write-Verbose "AWS SDK for *Net45* is already loaded, continuing module import"
        }
    }
}