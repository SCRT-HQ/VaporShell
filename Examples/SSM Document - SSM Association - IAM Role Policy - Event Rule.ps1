Import-Module VaporShell -MinimumVersion 2.7.1

$scriptPath = 'E:\CloudFormation\Get-ChocoPackages.ps1'
$commands = @(
    # Get-Content has a ton of hidden metadata
    # Need to pipe to Out-String to get only the expected contents
    (Get-Content $scriptPath | Out-String)
    'Get-ChocoPackages'
)

$ssmDocContent = [PSCustomObject]@{
    schemaVersion = "2.2"
    description   = "install chocolatey"
    mainSteps     = @(
        [pscustomobject]@{
            action       = "aws:runPowerShellScript"
            name         = 'chocoInstall' # no dashes
            precondition = @{StringEquals = @('platformType', "Windows")}
            inputs       = @{runCommand = $commands}
        }
    )
}

$template = Initialize-Vaporshell -Description "Core SSM Documents for shared use"

$newVSSSMDocumentSplat = @{
    LogicalId    = 'ChocoInstallSSMDocument'
    DocumentType = 'Command'
    Content      = $ssmDocContent
}
$chocoSSMDocument = New-VSSSMDocument @newVSSSMDocumentSplat
$documentArn = Add-FnJoin -Delimiter "" -ListOfValues @(
    'arn:aws:ssm:'
    Add-FnRef $_AWSRegion
    ':'
    Add-FnRef $_AWSAccountId
    ':document/'
    Add-FnRef $chocoSSMDocument
)

$addVSSSMAssociationTargetSplat = @{
    Key    = "tag:SSMWinRunCmdOnLaunch"
    Values = @('Yes','True')
}
$newVSSSMAssociationSplat = @{
    LogicalId = 'ChocoInstallSSMAssociation'
    Name      = Add-FnRef $chocoSSMDocument
    Targets   = @(Add-VSSSMAssociationTarget @addVSSSMAssociationTargetSplat)
}
$chocoSSMAssociation = New-VSSSMAssociation @newVSSSMAssociationSplat

$assumeRolePolicyDoc = [PSCustomObject]@{
    Version   = '2012-10-17'
    Statement = @(
        @{
            Effect    = 'Allow'
            Principal = @{
                Service = 'events.amazonaws.com'
            }
            Action    = @(
                'sts:AssumeRole'
            )
        }
    )
}
$newVSIAMRoleSplat = @{
    LogicalId                = "CloudWatchSSMRunCommandRole"
    AssumeRolePolicyDocument = $assumeRolePolicyDoc
}
$iamRole = New-VSIAMRole @newVSIAMRoleSplat

$policyDoc = [PSCustomObject]@{
    Version   = '2012-10-17'
    Statement = @(
        @{
            Effect   = 'Allow'
            Action   = @(
                Add-PolicyAction "ssm:*"
            )
            Resource = $documentArn
        }
    )
}
$newVSIAMPolicySplat = @{
    LogicalId      = "CloudWatchSSMRunCommandPolicy"
    PolicyName     = "CloudWatchSSMRunCommandPolicy"
    PolicyDocument = $policyDoc
    Roles          = @(Add-FnRef $iamRole)
}
$iamPolicy = New-VSIAMPolicy @newVSIAMPolicySplat

$addVSEventsRuleRunCommandTargetSplat = @{
    Key    = "tag:SSMWinRunCmdOnLaunch"
    Values = @('True','Yes')
}
$addVSEventsRuleRunCommandParametersSplat = @{
    RunCommandTargets = @(
        Add-VSEventsRuleRunCommandTarget @addVSEventsRuleRunCommandTargetSplat
    )
}
$addVSEventsRuleTargetSplat = @{
    RunCommandParameters = (
        Add-VSEventsRuleRunCommandParameters @addVSEventsRuleRunCommandParametersSplat
    )
    RoleArn              = (Add-FnGetAtt $iamRole Arn)
    Id                   = "$($chocoSSMDocument)Rule"
    Arn                  = $documentArn
}
$newVSEventsRuleSplat = @{
    LogicalId    = "$($chocoSSMDocument)Rule"
    State        = 'ENABLED'
    Targets      = @(Add-VSEventsRuleTarget @addVSEventsRuleTargetSplat)
    EventPattern = [PSCustomObject]@{
        source        = @('aws.autoscaling')
        'detail-type' = @('EC2 Instance Launch Successful')
    }
}
$cloudWatchEventRule = New-VSEventsRule @newVSEventsRuleSplat

$template.AddResource(
    $chocoSSMDocument,
    $chocoSSMAssociation,
    $iamRole,
    $iamPolicy,
    $cloudWatchEventRule
)

# Since we're creating IAM resources, we need to include the Capabilities now
$newVSStackSplat = @{
    StackName    = 'core-ssm-docs'
    Capabilities = 'CAPABILITY_IAM'
    Verbose      = $true
    Watch        = $true
    Force        = $true
}
$template | New-VSStack @newVSStackSplat
