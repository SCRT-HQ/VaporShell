function Import-AWSSDK {
    [cmdletbinding()]
    Param()
    try {
        New-Object Amazon.Runtime.CredentialManagement.CredentialProfileOptions -ErrorAction SilentlyContinue | Out-Null
        if ($PSVersionTable.PSVersion.Major -ge 6) {
            Write-Verbose "AWS SDK for *NetCore* is already loaded, continuing module import"
        }
        else {
            Write-Verbose "AWS SDK for *Net45* is already loaded, continuing module import"
        }
    }
    catch {
        if ($PSVersionTable.PSVersion.Major -ge 6) {
            Write-Verbose "Loading AWS SDK for *NetCore*!"
            $sdkPath = (Join-Path $Script:VaporshellPath "bin\NetCore" -Resolve)
        }
        else {
            Write-Verbose "Loading AWS SDK for *Net45*!"
            $sdkPath = (Join-Path $Script:VaporshellPath "bin\Net45" -Resolve)
        }
        Get-ChildItem $sdkPath -Filter "*.dll" | ForEach-Object {
            $dll = $_          
            $fileStream = ([System.IO.FileInfo]$dll).OpenRead()
            $assemblyBytes = New-Object -TypeName byte[] -ArgumentList $fileStream.Length
            $fileStream.Read($assemblyBytes, 0, $fileStream.Length) | Out-Null
            $fileStream.Close()
            [System.Reflection.Assembly]::Load($assemblyBytes) | Out-Null
        }
    }
}