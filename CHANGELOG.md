# Changelog 

<!-- TOC -->

- [Changelog](#changelog)
    - [2.3.0](#230)
    - [2.2.1](#221)
    - [2.2.0](#220)
    - [2.1.2](#212)
    - [2.1.1](#211)
    - [2.1.0](#210)
    - [2.0.3](#203)
    - [2.0.0](#200)
    - [1.2.3](#123)
    - [1.2.2](#122)
    - [1.2.0](#120)
    - [1.1.5](#115)
    - [1.1.0](#110)
    - [1.0.0](#100)
    - [0.7.10](#0710)
    - [0.7.09](#0709)
    - [0.7.08](#0708)
    - [0.7.07](#0707)
    - [0.7.06](#0706)
    - [0.7.05](#0705)
    - [0.7.04](#0704)
    - [0.7.03](#0703)
    - [0.7.02](#0702)

<!-- /TOC -->

## 2.3.0

- Added DSL wrapper to allow a different style of template building
- Added short aliases for all Condition and Intrinsic functions
- Removed private function Import-AWSSDK and added SDK import to PSM1

## 2.2.1

- Fixed [issue #25](https://github.com/scrthq/VaporShell/issues/25) by updating `Convert-SpecToFunction` to exclude common parameters from being added as properties to outputted resource and resource property objects

## 2.2.0

- Updated Travis-CI tests to use latest PowerShell release
- Updated AppVeyor tests to test in both PowerShell Core and Windows PowerShell
- Updated resource types/property types to latest spec sheet
- **Renamed New-VSS3Bucket to New-VSS3Box to prevent duplicate function name collision**

## 2.1.2

- Added additional ConEmu support to `Watch-Stack` 

## 2.1.1

- Updated Colorize to match against ROLLBACK events


## 2.1.0

- Updated resource and property types, adding another 107 functions to the module
- Updated `Watch-Stack` for ConEmu users so that it will create a new tab in ConEmu with the `-InNewWindow` parameter instead of launching a PowerShell.exe window


## 2.0.3

- Added `ToJSON()`,`ToYAML()` methods to Template object to allow quick conversion to either format
- Added `ToString()` method to Template object to output to JSON string to pass the template object directly to `-TemplateBody` parameters when creating stacks/change sets


## 2.0.0

- Completely wrapped the AWS .NET SDK's CloudFormation model, allowing for full stack / change set / stack set management from VaporShell
- Fixed Export-VaporShell to work with PowerShell v3 and v4 ([Issue #15](https://github.com/scrthq/VaporShell/issues/15))


## 1.2.3

- Added native template validation via the AWS .NET SDK (core and 45)

## 1.2.2

- Updated module manifest description for PSGallery
- Updated Resource and Property Types to include new entries from AWS Specifications
- Updated Convert-SpecToFunction to clean up bool attribute addition (intermittent conversion from bool to string) and also leverage $PSBoundParameters (slight speed and cleanliness boost)


## 1.2.0

- Restored Coveralls coverage in Pester tests
- Adjusted Export-VaporShell -ValidateTemplate to use file:// for the templateBody vs fileb:// (errors during Travis tests on Linux)


## 1.1.5

- Fixed default PowerShell JSON output formatting when using ConvertTo-Json; default formatting caused a large template to exceed CloudFormation's limits due to the extra spacing. Added in the private function `Format-Json` and set the default output to be cleaned up in `Export-VaporShell`


## 1.1.0

- Added `Update-VSResourceFunctions`
- Updated all Resource and Property Type functions

## 1.0.0

- Added full YAML support for import and export via leveraging `cfn-flip` from awslabs
- All functional issues resolved, ready to declare v1!  


## 0.7.10

- Added full Serverless coverage
- Expanded `Add-UserData` functionality to detect ps1, bat & cmd files and tag them if needed


## 0.7.09

- Fixed issue where List parameters with single values were being cast as a single string/object instead of an array with a single string/object


## 0.7.08

- Added `-ValidateTemplate` parameter to leverage `aws cloudformation validate-template` for syntax validation


## 0.7.07

- AppVeyor config updates


## 0.7.06 

- Added in FunctionBuilder and finished building all resource and resource property types


## 0.7.05 

- Added `Add-UserData`


## 0.7.04 

- Added Coveralls.io code coverage grading to CI process


## 0.7.03

- Expanded AppVeyor tests


## 0.7.02

- Updated module minor version to 7