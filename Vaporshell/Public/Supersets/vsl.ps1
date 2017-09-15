function vsl {
    <#
    .SYNOPSIS
    CLI style superset of VaporShell focused on packaging and deployment of CloudFormation stacks.

    For detailed parameter explanation, please run the following command with the action you'd like help with:

    vsl $action --help #actions: package | deploy | vaporize
    
    .DESCRIPTION
    CLI style superset of VaporShell focused on packaging and deployment of CloudFormation stacks. Allows you to build stacks with detailed transforms like SAM templates containing local resources with one easy command.
    
    .PARAMETER action
    The action that you'd like to do; options for this are: package, deploy, and vaporize (package AND deploy rolled into one).
    
    .PARAMETER help
    Switch to show help for the chosen action.
    
    .PARAMETER parameters
    The arguments to pass to vsl in CLI style:

    --template-file <value> --stack-name <value> --s3-bucket <value> [--s3-prefix <value>] [--parameter-overrides <value> [<value>...]] [--capabilities <value> [<value>...]] [--no-execute-changeset] [--role-arn <value>] [--notification-arns <value> [<value>...]] [--kms-key-id <value>] [--output-template-file <value>] [--use-json] [--force-upload] [--profile-name <value>] [--verbose {info (default)|full}]
    
    .EXAMPLE
    # Packages and deploys a SAM template. This includes zipping up the CodeURI folder, uploading to S3, adjusting the template with the S3 object location for CodeURI, creating the Change Set, then executing once the Change Set becomes available.

    vsl vaporize --tf ".\Helpers\SAM\schedule\template.yaml" --sn testSAMdeployment --s3 scrthq-package --pn scrthq --capabilities iam --v --f

    .EXAMPLE
    # Gets detailed help for the vaporize action

    vsl vaporize --help
    # OR
    vsl vaporize -help
    
    .NOTES
    General notes
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateSet("package","deploy","vaporize")]
        $action,
        [parameter(Mandatory = $false)]
        [switch]
        $help,
        [parameter(Mandatory = $false,Position = 1,ValueFromRemainingArguments = $true)]
        $parameters
    )    
    if ($help -or $parameters -match '^--help$') {
        $message = switch ($action) {
            package {@'
vsl package --template-file <value> --s3-bucket <value> [--s3-prefix <value>] [--kms-key-id <value>] [--output-template-file <value>] [--use-json] [--force-upload] [--profile-name <value>] [--verbose {info (default)|full}]


~ ~ ~ DESCRIPTION ~ ~ ~

Packages the local artifacts (local paths) that your AWS CloudFormation template references. The command uploads local artifacts, such as source code for an AWS Lambda function or a Swagger file for an AWS API Gateway REST API, to an S3 bucket. The command returns a copy of your template, replacing references to local artifacts with the S3 location where the command uploaded the artifacts.

This command can upload local artifacts specified by following properties of a resource:

    BodyS3Location property for the AWS::ApiGateway::RestApi resource
    Code property for the AWS::Lambda::Function resource
    CodeUri property for the AWS::Serverless::Function resource
    DefinitionUri property for the AWS::Serverless::Api resource
    SourceBundle property for the AWS::ElasticBeanstalk::ApplicationVersion resource
    TemplateURL property for the AWS::CloudFormation::Stack resource

To specify a local artifact in your template, specify a path to a local file or folder, as either an absolute or relative path. The relative path is a location that is relative to your template's location.

For example, if your AWS Lambda function source code is in the /home/user/code/lambdafunction/ folder, specify `` CodeUri: /home/user/code/lambdafunction`` for the AWS::Serverless::Function resource. The command returns a template and replaces the local path with the S3 location: CodeUri: s3://mybucket/lambdafunction.zip.


~ ~ ~ OPTIONS ~ ~ ~

REQUIRED
    --tf, --template-file (string) The path where your AWS CloudFormation template is located.

    --s3, --s3-bucket (string) The name of the S3 bucket where this command uploads the artifacts that are referenced in your template.


OPTIONAL
    --s3-prefix (string) A prefix name that the command adds to the artifacts' name when it uploads them to the S3 bucket. The prefix name is a path name (folder name) for the S3 bucket.

    --kms-key-id (string) The ID of an AWS KMS key that the command uses to encrypt artifacts that are at rest in the S3 bucket.

    --output-template-file (string) The path to the file where the command writes the output AWS CloudFormation template. If you don't specify a path, the command writes the template to the standard output.

    --use-json (boolean) Indicates whether to use JSON as the format for the output AWS CloudFormation template. YAML is used by default.

    --force-upload (boolean) Indicates whether to override existing files in the S3 bucket. Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket.
    
    --pn, --profile-name (string) The name of the saved configuration you would like to use for this command. Defaults to $env:AWS_PROFILE if set.

    --v, --verbose (boolean | string) Enables verbose output on the console. Passing no following value with treat this as a boolean 'true'. Passing 'info' as the value will achieve the same result as passing nothing. Passing 'full' as the value will enable full verbosity (useful for debugging what parameters are being passed to the different functions throughout the command).
'@
            }
            deploy {@'
vsl deploy --template-file <value> --stack-name <value> [--parameter-overrides <value> [<value>...]] [--capabilities <value> [<value>...]] [--no-execute-changeset] [--role-arn <value>] [--notification-arns <value> [<value>...]] [--profile-name <value>] [--verbose {info (default)|full}]
            
            
~ ~ ~ DESCRIPTION ~ ~ ~

Deploys the specified AWS CloudFormation template by creating and then executing a change set. The command terminates after AWS CloudFormation executes the change set. If you want to view the change set before AWS CloudFormation executes it, use the --no-execute-changeset flag.

To update a stack, specify the name of an existing stack. To create a new stack, specify a new stack name.


~ ~ ~ OPTIONS ~ ~ ~

REQUIRED
    --tf, --template-file (string) The path where your AWS CloudFormation template is located.

    --sn, --stack-name (string) The name of the AWS CloudFormation stack you're deploying to. If you specify an existing stack, the command updates the stack. If you specify a new stack, the command creates it.


OPTIONAL
    --parameter-overrides (list) A list of parameter structures that specify input parameters for your stack template. If you're updating a stack and you don't specify a parameter, the command uses the stack's existing value. For new stacks, you must specify parameters that don't have a default value. Syntax: ParameterKey1=ParameterValue1 ParameterKey2=ParameterValue2 ...

    --capabilities (list) A list of capabilities that you must specify before AWS Cloudformation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter. The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an InsufficientCapabilities error.

    --no-execute-changeset (boolean) Indicates whether to execute the change set. Specify this flag if you want to view your stack changes before executing the change set. The command creates an AWS CloudFormation change set and then exits without executing the change set. After you view the change set, execute it to implement your changes.

    --role-arn (string) The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set.

    --notification-arns (list) Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack.
    
    --pn, --profile-name (string) The name of the saved configuration you would like to use for this command. Defaults to $env:AWS_PROFILE if set.

    --v, --verbose (boolean | string) Enables verbose output on the console. Passing no following value with treat this as a boolean 'true'. Passing 'info' as the value will achieve the same result as passing nothing. Passing 'full' as the value will enable full verbosity (useful for debugging what parameters are being passed to the different functions throughout the command).
'@
            }
            vaporize {@'
vsl vaporize --template-file <value> --stack-name <value> --s3-bucket <value> [--s3-prefix <value>] [--parameter-overrides <value> [<value>...]] [--capabilities <value> [<value>...]] [--no-execute-changeset] [--role-arn <value>] [--notification-arns <value> [<value>...]] [--kms-key-id <value>] [--output-template-file <value>] [--use-json] [--force-upload] [--profile-name <value>] [--verbose {info (default)|full}]


~ ~ ~ DESCRIPTION ~ ~ ~

Combines both package and deploy into one command.


~ ~ ~ OPTIONS ~ ~ ~

REQUIRED
    --tf, --template-file (string) The path where your AWS CloudFormation template is located.
    
    --sn, --stack-name (string) The name of the AWS CloudFormation stack you're deploying to. If you specify an existing stack, the command updates the stack. If you specify a new stack, the command creates it.

    --s3, --s3-bucket (string) The name of the S3 bucket where this command uploads the artifacts that are referenced in your template.


OPTIONAL
    --s3-prefix (string) A prefix name that the command adds to the artifacts' name when it uploads them to the S3 bucket. The prefix name is a path name (folder name) for the S3 bucket.
    
    --parameter-overrides (list) A list of parameter structures that specify input parameters for your stack template. If you're updating a stack and you don't specify a parameter, the command uses the stack's existing value. For new stacks, you must specify parameters that don't have a default value. Syntax: ParameterKey1=ParameterValue1 ParameterKey2=ParameterValue2 ...
    
    --caps, --capabilities (list) A list of capabilities that you must specify before AWS Cloudformation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter. The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an InsufficientCapabilities error. Short names for 

    --no-execute-changeset (boolean) Indicates whether to execute the change set. Specify this flag if you want to view your stack changes before executing the change set. The command creates an AWS CloudFormation change set and then exits without executing the change set. After you view the change set, execute it to implement your changes.

    --role-arn (string) The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set.

    --notification-arns (list) Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack.

    --kms-key-id (string) The ID of an AWS KMS key that the command uses to encrypt artifacts that are at rest in the S3 bucket.

    --output-template-file (string) The path to the file where the command writes the output AWS CloudFormation template. If you don't specify a path, the command writes the template to the standard output.

    --use-json (boolean) Indicates whether to use JSON as the format for the output AWS CloudFormation template. YAML is used by default.

    --force-upload (boolean) Indicates whether to override existing files in the S3 bucket. Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket.
    
    --pn, --prof, --profile-name (string) The name of the saved configuration you would like to use for this command. Defaults to $env:AWS_PROFILE if set.

    --v, --verbose (boolean | string) Enables verbose output on the console. Passing no following value with treat this as a boolean 'true'. Passing 'info' as the value will achieve the same result as passing nothing. Passing 'full' as the value will enable full verbosity (useful for debugging what parameters are being passed to the different functions throughout the command).
'@
            }
        }
        Write-Host $message
    }
    else {
        $pkgAvails = @("TemplateBody","TemplateFile","S3Bucket","S3Prefix","KMSKeyId","OutputTemplateFile","UseJson","Force","ProfileName")
        $pkgParams = @{}
        $dplAvails = @("TemplateBody","TemplateFile","StackName","Parameters","Capabilities","DoNotExecute","RoleARN","NotificationARNs","ProfileName")
        $dplParams = @{}
        $aliasHash = @{
            parameteroverrides = "Parameters"
            noexecutechangeset = "DoNotExecute"
            forceupload        = "Force"
            caps = "Capabilities"
            tf = "TemplateFile"
            sn = "StackName"
            s3 = "S3Bucket"
            pn = "ProfileName"
            prof = "ProfileName"
            v = "Verbose"
            f = "Force"
        }
        $capsHash = @{
            named = "CAPABILITY_NAMED_IAM"
            iam = "CAPABILITY_IAM"
        }
        $paramHash = @{}
        $parameters | ForEach-Object {
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
                if ($lastvar -eq "verbose") {
                    if ($_ -eq "full") {
                        $fullVerbose = $true
                    }
                }
                elseif ($lastvar -eq "Capabilities") {
                    if ($capsHash[$_]) {
                        $val = $capsHash[$_]
                    }
                    elseif ($_ -ne "CAPABILITY_NAMED_IAM" -and $_ -ne "CAPABILITY_IAM") {
                        $PSCmdlet.ThrowTerminatingError((New-VSError -String "You must specify 'named', 'iam', 'CAPABILITY_NAMED_IAM', or 'CAPABILITY_IAM' for -capabilities!"))
                    }
                    else {
                        $val = $_
                    }
                    if ($i -eq 1) {
                        $paramHash[$lastvar] = $val
                    }
                    else {
                        $paramHash[$lastvar] += $val
                    }
                }
                elseif ($_ -like "*=*" -and $_ -is [System.String]) {
                    $side = $_.Split("=").Trim('"')
                    if ($i -eq 1) {
                        $paramHash[$lastvar] = @{$side[0] = $side[1]}
                    }
                    else {
                        $paramHash[$lastvar][$side[0]] = $side[1]
                    }
                }
                elseif (($_ -eq "true" -or $_ -eq "false") -and $_ -is [System.String]) {
                    if ($_ -eq "true") {
                        $val = $true
                    }
                    else {
                        $val = $false
                    }
                    if ($i -eq 1) {
                        $paramHash[$lastvar] = $val
                    }
                    else {
                        $paramHash[$lastvar] += $val
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
        if ($paramHash["Verbose"]) {
            $VerboseSaved = $VerbosePreference
            $VerbosePreference = "Continue"
            Write-Verbose "vsl parameters:`n$($paramHash | Format-Table -AutoSize | Out-String)"
            $VerbosePreference = $VerboseSaved
        }
        $verbProf = @{
            Verbose = $false
        }
        if ($fullVerbose) {
            $verbProf["Verbose"] = $true
        }
        switch ($action) {
            package {
                Invoke-VSPackage @pkgParams @verbProf
            }
            deploy {
                Invoke-VSDeploy @dplParams @verbProf
            }
            vaporize {
                if ($dplParams.Keys -contains "TemplateFile") {
                    $dplParams.Remove("TemplateFile")
                }
                Invoke-VSPackage @pkgParams @verbProf | Invoke-VSDeploy @dplParams @verbProf
            }
        }
    }
}