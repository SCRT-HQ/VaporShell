@{
    PSDependOptions = @{
        Target = 'CurrentUser'
        DependencyType = 'PSGalleryModule'
    }
    PackageManagement = 'latest'
    PowerShellGet     = 'latest'
    InvokeBuild  = 'latest'
    Assert       = 'latest'
    Pester       = '4.10.1'
    PSProfile    = 'latest'
    Configuration     = '1.3.1'
    PSScriptAnalyzer  = 'latest'
    'AWS.Tools.CloudFormation' = 'latest'
}