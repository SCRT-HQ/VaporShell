@{

    # Script module or binary module file associated with this manifest.
    RootModule             = 'VaporShell.StepFunctions.psm1'

    # Version number of this module.
    ModuleVersion          = '3.0.0'

    # ID used to uniquely identify this module
    GUID                   = '8eb72e7d-ff1d-42bf-9663-a883ae1a3ba1'

    # Author of this module
    Author                 = 'Nate Ferrell'

    # Company or vendor of this module
    CompanyName            = 'SCRT HQ'

    # Copyright statement for this module
    Copyright              = '(c) SCRT HQ 2020 . All rights reserved.'

    # Description of the functionality provided by this module
    Description            = "A PowerShell module for building, packaging and deploying AWS CloudFormation templates

Prerequisites

- PowerShell 3+
    - On Linux or macOS? Grab PowerShell 6 here: https://github.com/powershell/powershell#get-powershell
- .NET 4.7.2+ OR .netstandard 1.3+
    - if you have PowerShell 4 or greater, you're covered!

For further information, please checkout the README on the GitHub page and the module website:

Readme: https://github.com/SCRT-HQ/VaporShell/blob/master/README.md
Website: https://vaporshell.io/
"

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion      = '5.1'

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module
    DotNetFrameworkVersion = '4.7.2'

    # Minimum version of the common language runtime (CLR) required by this module
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    ProcessorArchitecture  = 'None'

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules        = @(@{
  ModuleName = 'VaporShell'
  ModuleVersion = '3.0.0'
})

    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies     = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    ScriptsToProcess       = @()

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess         = @()

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess       = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules          = @('VaporShell.DSL.psm1')

    # Functions to export from this module
    FunctionsToExport      = '*'

    # Cmdlets to export from this module
    CmdletsToExport        = @()

    # Variables to export from this module
    VariablesToExport      = '*'

    # Aliases to export from this module
    AliasesToExport        = '*'

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    FileList               = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData            = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags       = 'AWS', 'CloudFormation', 'CFN', 'DevOps', 'Automation', 'JSON', 'YAML', 'IaC', 'InfrastructureAsCode', 'PSEdition_Core', 'PSEdition_Desktop', 'Windows', 'Mac', 'Linux'

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/SCRT-HQ/VaporShell/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/SCRT-HQ/VaporShell'

            # A URL to an icon representing this module.
            IconUri    = 'https://spotinst.com/app/themes/spotinst-theme/dist/images/features/elastigroup/intro/icons/cloudformation.svg'

            # ReleaseNotes of this module
            # ReleaseNotes = ''

            # External dependent modules of this module
            # ExternalModuleDependencies = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI            = 'https://vaporshell.io/docs/'

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}








