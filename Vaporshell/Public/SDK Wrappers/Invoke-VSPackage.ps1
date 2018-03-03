function Invoke-VSPackage {
    <#
    .SYNOPSIS
    Packages the local artifacts (local paths) that your AWS CloudFormation template references.
    
    .DESCRIPTION
    Packages the local artifacts (local paths) that your AWS CloudFormation template references. The command uploads local artifacts, such as source code for an AWS Lambda function or a Swagger file for an AWS API Gateway REST API, to an S3 bucket. The command returns a copy of your template, replacing references to local artifacts with the S3 location where the command uploaded the artifacts.
    
    .PARAMETER TemplateBody
    A JSON or YAML string containing the template body.
    
    .PARAMETER TemplateFile
    The path to the local file containing the template.
    
    .PARAMETER S3Bucket
    The name of the S3 bucket where this command uploads the artifacts that are referenced in your template.
    
    .PARAMETER S3Prefix
    A prefix name that the command adds to the artifacts' name when it uploads them to the S3 bucket. The prefix name is a path name (folder name) for the S3 bucket.
    
    .PARAMETER KMSKeyId
    The ID of an AWS KMS key that the command uses to encrypt artifacts that are at rest in the S3 bucket.
    
    .PARAMETER OutputTemplateFile
    The path to the file where the command writes the output AWS CloudFormation template. If you don't specify a path, the command writes the template to the standard output.
    
    .PARAMETER UseJson
    Indicates whether to use JSON as the format for the output AWS CloudFormation template. YAML is used by default (if cfn-flip is available).
    
    .PARAMETER Force
    Indicates whether to override existing files in the S3 bucket. Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket.
    
    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.
    
    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding(DefaultParameterSetName = "TemplateFile")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateBody",ValueFromPipeline = $true)]
        [String]
        $TemplateBody,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateFile")]
        [ValidateScript( {
                Test-Path $_
            })]
        [String]
        $TemplateFile,
        [parameter(Mandatory = $true,Position = 1)]
        [String]
        $S3Bucket,
        [parameter(Mandatory = $false)]
        [System.String]
        $S3Prefix,
        [parameter(Mandatory = $false)]
        [System.String]
        $KMSKeyId,
        [parameter(Mandatory = $false)]
        [System.String]
        $OutputTemplateFile,
        [parameter(Mandatory = $false)]
        [Switch]
        $UseJson,
        [parameter(Mandatory = $false)]
        [Alias("ForceUpload")]
        [Switch]
        $Force,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        $prof = @{}
        if ($ProfileName) {
            $prof["ProfileName"] = $ProfileName
        }
        $typeHash = @{
            "AWS::ApiGateway::RestApi"                  = "BodyS3Location"
            "AWS::Lambda::Function"                     = "Code"
            "AWS::Serverless::Function"                 = "CodeUri"
            "AWS::Serverless::Api"                      = "DefinitionUri"
            "AWS::ElasticBeanstalk::ApplicationVersion" = "SourceBundle"
            "AWS::CloudFormation::Stack"                = "TemplateUrl"
        }
        $s3Params = @{}
        if ($S3Prefix) {
            $s3Params["BucketName"] = "$($S3Bucket)/$($S3Prefix)"
            $baseUrl = "$($S3Bucket)/$($S3Prefix)"
        }
        else {
            $s3Params["BucketName"] = $S3Bucket
            $baseUrl = $($S3Bucket)
        }
        if ($KMSKeyId) {
            $s3Params["KMSKeyId"] = $KMSKeyId
        }
        try {
            Write-Verbose "Checking if bucket '$S3Bucket' exists"
            $bucketLoc = Get-VSS3BucketLocation -BucketName "$S3Bucket" @prof -Verbose:$false
            Write-Verbose "Bucket '$S3Bucket' found in $($bucketLoc.Value)"
        }
        catch {
            if ($Force) {
                Write-Verbose "Creating new bucket '$S3Bucket'"
                New-VSS3Box -BucketName "$S3Bucket" @prof -Verbose:$false
            }
            else {
                $PSCmdlet.ThrowTerminatingError($_)
            }
        }
    }
    Process {
        Add-Type -AssemblyName "System.IO.Compression.Filesystem"
        if ($PSCmdlet.ParameterSetName -eq "TemplateFile") {
            Write-Verbose "Getting TemplateBody from TemplateFile path"
            $templateFilePath = (Resolve-Path $TemplateFile).Path
            $tempParent = (Get-Item $templateFilePath).Directory.FullName
            $TemplateBody = [System.IO.File]::ReadAllText($templateFilePath)
        }
        $tempPSON = Import-Vaporshell -TemplateBody $TemplateBody
        $resourceIds = $tempPSON.Resources | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name
        foreach ($res in $resourceIds) {
            $Resource = $tempPSON.Resources.$res
            try {
                $propName = $typeHash["$($Resource.Type)"]
                if ($propName -and $Resource.Properties.$propName) {
                    Write-Verbose "Checking '$($Resource.Type)' resource --- property '$($propName)'"
                    if (($Resource.Properties.$propName -notlike "s3://*") -and ($Resource.Properties.$propName -notlike "http*")) {
                        $found = $true
                        if (Test-Path ("$tempParent\$($Resource.Properties.$propName.TrimStart('.'))")) {
                            $filePath = (Resolve-Path "$tempParent\$($Resource.Properties.$propName.TrimStart('.'))").Path
                            Write-Verbose "File found in template directory at: $filePath"
                        }
                        elseif (Test-Path $Resource.Properties.$propName) {
                            $filePath = (Resolve-Path $Resource.Properties.$propName).Path
                            if ($filePath -like "$($pwd.Path)*") {
                                Write-Verbose "File found in current working directory at: $filePath"
                            }
                            else {
                                Write-Verbose "File found at: $filePath"
                            }
                        }
                        else {
                            $found = $false
                        }
                        if ($found) {
                            $fileInfo = Get-Item $filePath
                            if ($fileInfo.PSIsContainer) {
                                if ($S3Prefix) {
                                    $key = "$($S3Prefix)/$($fileInfo.BaseName).zip"
                                }
                                else {
                                    $key = "$($fileInfo.BaseName).zip"
                                }
                                $outFile = Join-Path $fileInfo.Parent.FullName $key
                                if (Test-Path $outFile) {
                                    Remove-Item $outFile -Force
                                }
                                [System.IO.Compression.Zipfile]::CreateFromDirectory($filePath,$outFile)
                            }
                            else {
                                if ($S3Prefix) {
                                    $key = "$($S3Prefix)/$($fileInfo.Name)"
                                }
                                else {
                                    $key = "$($fileInfo.Name)"
                                }
                                $outFile = $filePath
                            }
                            if ($Force) {
                                Write-Verbose "Uploading object!"
                                $obj = New-VSS3Object -Key $key -FilePath $outFile @s3Params @prof -Verbose:$false
                            }
                            else {
                                Write-Verbose "Checking if object exists in bucket"
                                $existsMeta = Get-VSS3ObjectMetadata -BucketName $baseUrl -Key $key -ErrorAction SilentlyContinue -Verbose:$false
                                if (!$existsMeta) {
                                    Write-Verbose "Object not found -- uploading!"
                                    $obj = New-VSS3Object -Key $key -FilePath $outFile @s3Params @prof -Verbose:$false
                                }
                                elseif ($existsMeta.ContentLength -eq (Get-Item $outFile).Length) {
                                    Write-Warning "Object '$key' already exists in bucket and is the same size. No action apparently necessary -- If this file needs to be reuploaded, re-run this command with the Force parameter included."
                                    return
                                }
                                else {
                                    Write-Warning "Object already exists at this location and Force parameter not used. No action taken to prevent accidental overwrites. -- If this object needs to be overwritten, re-run this command with the Force parameter included."
                                    return
                                }
                            }
                            $Resource.Properties.$propName = "s3://$baseUrl/$key"
                        }
                        else {
                            Write-Warning "$propName value '$($Resource.Properties.$propName)' does not appear to be an S3 URL but is also not locatable in the current working directory or the direct of the template (if provided). Please specify the full path of the local $propName to upload to the S3 bucket '$baseUrl'"
                        }
                    }
                }
                $tempPSON.Resources.$res = $Resource
            }
            catch {
                $PSCmdlet.ThrowTerminatingError($_)
            }
        }
        $finalParams = @{}
        if ($OutputTemplateFile) {
            $finalParams["Path"] = $OutputTemplateFile
        }
        if ($UseJson) {
            $finalParams["As"] = "JSON"
        }
        else {
            $finalParams["As"] = "YAML"
        }
    Write-Verbose "Exporting resolved template"
    Export-Vaporshell -VaporshellTemplate $tempPSON @finalParams -Force
    }
}