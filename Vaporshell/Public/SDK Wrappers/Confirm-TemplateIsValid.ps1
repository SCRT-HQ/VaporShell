function Confirm-TemplateIsValid {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true)]
        [ValidateScript( {Test-Path $_})]
        [String]
        $Path,
        [parameter(Mandatory = $false,Position = 1)]
        [String]
        $ProfileName = "default"
    )
    Begin {
        Import-AWSSDK -Verbose:$false
        $resolvedPath = (Resolve-Path $Path).Path
        Write-Verbose "Validating template file: $resolvedPath"
    }
    Process {
        $req = ([Amazon.CloudFormation.AmazonCloudFormationClient]::new([Amazon.Runtime.StoredProfileAWSCredentials]::new("$ProfileName"))).ValidateTemplateAsync((New-Object Amazon.CloudFormation.Model.ValidateTemplateRequest -Property @{TemplateBody = [System.IO.File]::ReadAllText($resolvedPath)}))
    }
    End {
        if ($req.Result) {
            Write-Verbose "Template validation request processed, results below"
            $req.Result
        }
        elseif ($req.Exception) {
            Write-Verbose "Something went wrong!"
            $req.Exception
        }
        else {
            $req
        }
    }
}