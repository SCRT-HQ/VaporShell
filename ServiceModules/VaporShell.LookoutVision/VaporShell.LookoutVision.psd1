@{
    RootModule             = 'VaporShell.LookoutVision.psm1'
    ModuleVersion          = '3.0.0'
    GUID                   = 'a65cb67f-1686-446c-8522-b830dd0cd015'
    Author                 = 'Nate Ferrell'
    CompanyName            = 'SCRT HQ'
    Copyright              = '(c) SCRT HQ 2020 . All rights reserved.'
    Description            = "Service-specific module for AWS CloudFormation for service:"
    PowerShellVersion      = '5.1'
    DotNetFrameworkVersion = '4.7.2'
    ProcessorArchitecture  = 'None'
    RequiredModules        = @(@{
  ModuleName = 'VaporShell'
})
    RequiredAssemblies     = @()
    ScriptsToProcess       = @()
    TypesToProcess         = @()
    FormatsToProcess       = @()
    FunctionsToExport      = '*'
    CmdletsToExport        = @()
    VariablesToExport      = '*'
    AliasesToExport        = '*'
    FileList               = @()
    PrivateData            = @{
        PSData = @{
            Tags       = 'AWS', 'CloudFormation', 'CFN', 'DevOps', 'Automation', 'JSON', 'YAML', 'IaC', 'InfrastructureAsCode', 'PSEdition_Core', 'PSEdition_Desktop', 'Windows', 'Mac', 'Linux'
            LicenseUri = 'https://github.com/SCRT-HQ/VaporShell/blob/master/LICENSE'
            ProjectUri = 'https://github.com/SCRT-HQ/VaporShell'
            IconUri    = 'https://spotinst.com/app/themes/spotinst-theme/dist/images/features/elastigroup/intro/icons/cloudformation.svg'
        }

    }
}