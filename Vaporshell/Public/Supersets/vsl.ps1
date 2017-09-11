function vsl {
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateSet("package","deploy","vaporize")]
        $action,
        [parameter(Mandatory = $false,Position = 1,ValueFromRemainingArguments = $true)]
        $vars
    )
    $pkgAvails = @("TemplateBody","TemplateFile","S3Bucket","S3Prefix","KMSKeyId","OutputTemplateFile","UseJson","Force","ProfileName")
    $pkgParams = @{}
    $dplAvails = @("TemplateBody","TemplateFile","StackName","Parameters","Capabilities","DoNotExecute","RoleARN","NotificationARNs","ProfileName")
    $dplParams = @{}
    $aliasHash = @{
        parameteroverrides = "Parameters"
        noexecutechangeset = "DoNotExecute"
        forceupload        = "Force"
    }
    $paramHash = @{}
    $vars | ForEach-Object {
        if ($_ -match '^--') {
            $i = 0
            $lastvar = $_ -replace '-'
            if ($aliasHash[$($lastvar.ToLower())]) {
                $lastvar = $aliasHash[$($lastvar)]
            }
            $paramHash[$lastvar] = $true
        }
        else {
            $i++
            if ($_ -like "*=*" -and $_ -is [System.String]) {
                $side = $_.Split("=").Trim('"')
                if ($i -eq 1) {
                    $paramHash[$lastvar] = @{$side[0] = $side[1]}
                }
                else {
                    $paramHash[$lastvar][$side[0]] = $side[1]
                }
            }
            else {
                if ($i -eq 1) {
                    $paramHash[$lastvar] = $_
                }
                else {
                    $paramHash[$lastvar] += $_
                }
            }
        }
    }
    if ($paramHash.Keys -notcontains "templatefile") {
        $PSCmdlet.ThrowTerminatingError((New-VSError -String "--template-file not found in argument list! You must specify a template-file path for all actions"))
    }
    if ($paramHash.Keys -notcontains "stackname" -and ($action -eq "deploy" -or $action -eq "vaporize")) {
        $PSCmdlet.ThrowTerminatingError((New-VSError -String "--stack-name not found in argument list! You must specify a stack-name for either 'vsl deploy' or 'vsl vaporize'"))
    }
    if ($paramHash.Keys -notcontains "s3bucket" -and ($action -eq "package" -or $action -eq "vaporize")) {
        $PSCmdlet.ThrowTerminatingError((New-VSError -String "--s3-bucket not found in argument list! You must specify an s3-bucket for either 'vsl package' or 'vsl vaporize'"))
    }
    foreach ($key in $paramHash.Keys) {
        if ($pkgAvails -contains $key) {
            $pkgParams[$key] = $paramHash[$key]
        }
        if ($dplAvails -contains $key) {
            $dplParams[$key] = $paramHash[$key]
        }
    }
    switch ($action) {
        package {
            VSPackage @pkgParams -Verbose:$false
        }
        deploy {
            VSDeploy @dplParams -Verbose:$false
        }
        vaporize {
            if ($dplParams.Keys -contains "TemplateFile") {
                $dplParams.Remove("TemplateFile")
            }
            VSPackage @pkgParams | VSDeploy @dplParams
        }
    }
}