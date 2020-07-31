<!-- TOC -->

* [2.13.0 - 2020-07-30](#2130---2020-07-30)
* [2.12.2 - 2020-06-04](#2122---2020-06-04)
* [2.12.1 - 2020-05-05](#2121---2020-05-05)
* [2.12.0 - 2020-05-03](#2120---2020-05-03)
* [2.11.1 - 2020-03-09](#2111---2020-03-09)
* [2.11.0 - 2020-03-04](#2110---2020-03-04)
* [2.10.1 - 2020-02-20](#2101---2020-02-20)
* [2.10.0 - 2020-02-18](#2100---2020-02-18)
* [2.9.5 - 2020-02-17](#295---2020-02-17)
* [2.9.4 - 2019-12-11](#294---2019-12-11)
* [2.9.3 - 2019-11-24](#293---2019-11-24)
* [2.9.2 - 2019-10-06](#292---2019-10-06)
* [2.9.1 - 2019-09-09](#291---2019-09-09)
* [2.9.0 - 2019-09-08](#290---2019-09-08)
* [2.8.1 - 2019-08-24](#281---2019-08-24)
* [2.8.0 - 2019-08-08](#280---2019-08-08)
* [2.7.3 - 2019-04-16](#273---2019-04-16)
* [2.7.2 - 2019-04-16](#272---2019-04-16)
* [2.7.1 - 2019-03-09](#271---2019-03-09)
* [2.7.0 - 2019-03-08](#270---2019-03-08)
* [2.6.3](#263)
* [2.6.2](#262)
* [2.6.1](#261)
* [2.6.0](#260)
* [2.5.5](#255)
* [2.5.4](#254)
* [2.5.3](#253)
* [2.5.2](#252)
* [2.5.1](#251)
* [2.5.0](#250)
* [2.4.1](#241)
* [2.4.0](#240)
* [2.3.0](#230)
* [2.2.1](#221)
* [2.2.0](#220)
* [2.1.2](#212)
* [2.1.1](#211)
* [2.1.0](#210)
* [2.0.3](#203)
* [2.0.0](#200)
* [1.2.3](#123)
* [1.2.2](#122)
* [1.2.0](#120)
* [1.1.5](#115)
* [1.1.0](#110)
* [1.0.0](#100)
* [0.7.10](#0710)
* [0.7.09](#0709)
* [0.7.08](#0708)
* [0.7.07](#0707)
* [0.7.06](#0706)
* [0.7.05](#0705)
* [0.7.04](#0704)
* [0.7.03](#0703)
* [0.7.02](#0702)

<!-- /TOC -->

## 2.13.0 - 2020-07-30

* [Issue #81](https://github.com/SCRT-HQ/VaporShell/issues/81)
    * Fixed: `Add-ConIf` parameter error message.
    * Fixed: `Add-ConIf` now allows boolean values.
* [Issue #82](https://github.com/SCRT-HQ/VaporShell/issues/82)
    * Fixed: Condition Functions are now supported on any parameter that already accepts Intrinsic Functions.
* Miscellaneous
    * Updated PseudoParameter list to current spec.
    * Switched default branch from `master` to `main`.

## 2.12.2 - 2020-06-04

* [Issue #79](https://github.com/SCRT-HQ/VaporShell/issues/79)
    * Fixed: Documentation on `New-VaporCondition`

## 2.12.1 - 2020-05-05

* Miscellaneous
    * Fixed: `Watch-Stack` colorization bleed on BackgroundColor changes
    * Fixed: `Watch-Stack` now exits when all stacks are in a stable state, not early if one stack stablizes before the rest.

## 2.12.0 - 2020-05-03

* [Issue #74](https://github.com/SCRT-HQ/VaporShell/issues/74)
    * Fixed: `UpdateReplacePolicy` was incorrectly nested under the Resource Properties, not top-level next to `DeletionPolicy`.
* [Issue #75](https://github.com/SCRT-HQ/VaporShell/issues/75)
    * Added: Support for `ResourcesToImport` declaration on changes sets with `New-VSChangeSet`
    * Added: New helper function `Add-VSChangeSetResourceToImport` to create the `ResourceToImport` object needed as the value of the `ResourcesToImport` parameter on `New-VSChangeSet`

## 2.11.1 - 2020-03-09

* [Issue #72](https://github.com/SCRT-HQ/VaporShell/issues/72)
  * Updated allowable types for `Add-FnJoin` to match current AWS documentation (was missing `Fn::ImportValue` and `Fn::Sub` support)

## 2.11.0 - 2020-03-04

* [Issue #69](https://github.com/SCRT-HQ/VaporShell/issues/69) + [PR #70](https://github.com/SCRT-HQ/VaporShell/pull/70) - _Thanks, [@indented-automation](https://github.com/indented-automation)!!!_
  * Started `VaporShell.Core` class library to include with the module, first class being `TransformTagAttribute` to cleanly convert `Tags` parameter input to the appropriate format if not already.
  * Added Pester tests to confirm Tag transforms are working as expected.
* [Issue #68](https://github.com/SCRT-HQ/VaporShell/issues/68) - _Thanks, [@indented-automation](https://github.com/indented-automation) and [@austoonz](https://github.com/austoonz)!!!_
  * Surfaced errors better on AWS SDK errors so the actual error is visible.
  * Added the `FallbackCredentialFactory` to better support running in environments where credentials files are not a practical option.
* Miscellaneous
  * Updated PseudoParameter list to current spec.
  * Added newer intrinsic functions `Add-FnCidr` and `Add-FnTransform`.

## 2.10.1 - 2020-02-20

* Miscellaneous
  * Removed `RequiredAssemblies` from the module manifest due to collisions with existing AWS modules.
  * Moved the Assembly import to a private function `Import-AWSSDK` and added a call to that function in the `Begin` block of each function wrapping AWS SDK calls.
  * Removed the process that imports the assemblies on module load so they're only imported if needed for SDK wrapper calls.

## 2.10.0 - 2020-02-18

* Miscellaneous
  * **Brought minimum .NET version to 4.7.2**
  * Updated build process to use InvokeBuild instead of psake
  * Updated tasks to pull down the latest dependent assemblies during build
  * Added scheduled build triggers for weekly deployments
  * Changed the version scheme so it includes the date stamp as the build version

## 2.9.5 - 2020-02-17

* [Issue #66](https://github.com/SCRT-HQ/VaporShell/issues/66)
  * Fixed: `Int`,`Double`, and `Boolean` parameters now accept CloudFormation Intrinsic Functions as parameter values.
* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.9.4 - 2019-12-11

* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.9.3 - 2019-11-24

* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.9.2 - 2019-10-06

* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.9.1 - 2019-09-09

* [Issue #61](https://github.com/SCRT-HQ/VaporShell/issues/61) -- _Thanks, [@ScriptAutomate](https://github.com/ScriptAutomate)!_
  * Updated Synopsis and Description for all Resource Type and Property Type functions to include the information from the parsed documentation.

## 2.9.0 - 2019-09-08

* [Issue #61](https://github.com/SCRT-HQ/VaporShell/issues/61) -- _Thanks, [@ScriptAutomate](https://github.com/ScriptAutomate)!_
  * Updated Parameter help for all Resource Type and Property Type functions to include the Parameter descriptions.
* [Issue #62](https://github.com/SCRT-HQ/VaporShell/issues/62) -- _Thanks, [@ScriptAutomate](https://github.com/ScriptAutomate)!_
  * Updated the CI build process to check all spec sheets for any Resource Types and Property Types that may be missing from `us-east-1`.
* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.8.1 - 2019-08-24

* Miscellaneous
  * Updated Package name casing on the PowerShell Gallery from `Vaporshell` to `VaporShell` to fix module importing on Linux.
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.8.0 - 2019-08-08

* [Issue #57](https://github.com/SCRT-HQ/PSGSuite/issues/57)
  * Fixed: `ProcessRequest4` private function will now use the Async methods if detected, so usage of the AWSPowerShell.NetCore or AWS.Tools.* modules from Windows PowerShell will still work as expected when using any of the SDK wrapper functions like `Watch-Stack`
* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.7.3 - 2019-04-16

* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.7.2 - 2019-04-16

* [Issue #53](https://github.com/SCRT-HQ/VaporShell/issues/53)
  * Fixed: `New-VaporMetadata` now allows colons `:` in the LogicalId.
* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.
  * Removed automatic inclusion of `AWSTemplateFormatVersion` from templates created with `Initialize-VaporShell`.
  * Set `Description` parameter as Position `0` on `Initialize-VaporShell`.

## 2.7.1 - 2019-03-09

* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.
  * Fixed: Bug in `New-VSStack` introduced in v2.7.0. Initial check if stack exists was in a `try` block, followed by the call to `New-VSChangeSet` if so. If `New-VSChangeSet` fails (i.e. missing Capabilities), it would break out of the `try` block and then try to create the stack new. Since the stack does actually exist in this scenario, that throws an expected Stack Exists error and hides the actual error coming from `New-VSChangeSet`.
  * Added: `Add-PolicyAction` helper function to enable tab-completion for IAM policy actions, i.e. `clouddirectory:RemoveFacetFromObject` or `organizations:ListHandshakesForAccount`
  * Added: Examples folder in-repo to house any example scripts.

## 2.7.0 - 2019-03-08

* [Issue #48](https://github.com/SCRT-HQ/VaporShell/issues/48)
  * Fixed: `Export-VaporShell` was having various failures due to the `Format-Json` private function called during JSON conversion.
* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.
  * Added: `Watch` and `Force` parameters to `New-VSStack` and `New-VSChangeSet` to watch and/or force stack creation.
  * Added: `Watch` parameter to `Remove-VSStack` and `Invoke-VSChangeSetExecution` to watch stack events.
  * Updated: `Watch-Stack` to handle multiple stack watching at once.

## 2.6.3

* [Issue #44](https://github.com/SCRT-HQ/VaporShell/issues/44)
  * Fixed: `Resource` from the DSL module was no longer resolving the available types after the CI/CD pipeline switched to compiling the module into a single PSM1 before deploying to the PowerShell Gallery.
* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.6.2

* [Issue #41](https://github.com/SCRT-HQ/VaporShell/issues/41)
  * Fixed: `Update-VSStack` and `Update-VSStackSet` were removing the `BuiltWith = VaporShell` tags if not explicitly included when updating Tags.
* Miscellaneous
  * Brought Resource Type and Property Type functions up to current spec sheet.

## 2.6.1

* [Issue #41](https://github.com/SCRT-HQ/VaporShell/issues/41)
  * Fixed: `Tags` parameter on the following functions was incorrectly expecting `String` values, switched to `Hashtable`:
    * `New-VSStack`
    * `Update-VSStack`
    * `New-VSStackSet`
    * `Update-VSStackSet`
    * `New-VSChangeSet`

## 2.6.0

* Fixed: `Watch-Stack` was not closing when stack was in a COMPLETE or FAILED status.
* Updated: Build and deploy process to funnel everything through Azure Pipelines

## 2.5.5

* Fixed `Add-UserData`'s use of `Fn::Join` so that it automatically sets `\n` as the delimiter with the `-UseJoin` parameter
* Updated Resource Type and Property Type functions to latest CloudFormation spec

## 2.5.4

* Updated `Add-UserData` with `-Persist` switch to allow flagging the UserData as persistent by adding the `<persist>true</persist>` tag on the bottom of the contents.
* Updated all Resource Property Type functions to include Verbose output of the resulting JSON object
* Updated `Add-VSLambdaFunctionCode` with `-ZipFilePath` parameter to enable passing of a file path instead of reading ZipFile as string only

## 2.5.3

* Fixed bug in `Watch-Stack` updates found in v2.5.2

## 2.5.2

* Updated `Watch-Stack` to format the table based on each column's data width so headers aren't readded

## 2.5.1

* Updated script methods on `Initialize-VaporShell` and `Import-VaporShell`
* Updated `Add-UserData` with new `-UseJoin` parameter to add UserData using Fn::Join for readability if preferred and `-Replace` to supply a hashtable of values to replace in your UserData with script values
* Updated overall performance in `Add-UserData`

## 2.5.0

* Added `Import-VSTemplateConfig` to enable external template usage for dynamic templates

## 2.4.1

* Added `Vaporshell.Condition` to the acceptible types for standard resource parameters ([Issue #35](https://github.com/SCRT-HQ/VaporShell/issues/35))

## 2.4.0

* Added `ToString()` method override to `New-VaporResource` for convenience during template building [Issue #34](https://github.com/SCRT-HQ/VaporShell/issues/34)

## 2.3.0

* Added DSL wrapper to allow a different style of template building
* Added short aliases for all Condition and Intrinsic functions
* Removed private function Import-AWSSDK and added SDK import to PSM1

## 2.2.1

* Fixed [issue #25](https://github.com/SCRT-HQ/VaporShell/issues/25) by updating `Convert-SpecToFunction` to exclude common parameters from being added as properties to outputted resource and resource property objects

## 2.2.0

* Updated Travis-CI tests to use latest PowerShell release
* Updated AppVeyor tests to test in both PowerShell Core and Windows PowerShell
* Updated resource types/property types to latest spec sheet
* **Renamed New-VSS3Bucket to New-VSS3Box to prevent duplicate function name collision**

## 2.1.2

* Added additional ConEmu support to `Watch-Stack`

## 2.1.1

* Updated Colorize to match against ROLLBACK events


## 2.1.0

* Updated resource and property types, adding another 107 functions to the module
* Updated `Watch-Stack` for ConEmu users so that it will create a new tab in ConEmu with the `-InNewWindow` parameter instead of launching a PowerShell.exe window


## 2.0.3

* Added `ToJSON()`,`ToYAML()` methods to Template object to allow quick conversion to either format
* Added `ToString()` method to Template object to output to JSON string to pass the template object directly to `-TemplateBody` parameters when creating stacks/change sets


## 2.0.0

* Completely wrapped the AWS .NET SDK's CloudFormation model, allowing for full stack / change set / stack set management from VaporShell
* Fixed Export-VaporShell to work with PowerShell v3 and v4 ([Issue #15](https://github.com/SCRT-HQ/VaporShell/issues/15))


## 1.2.3

* Added native template validation via the AWS .NET SDK (core and 45)

## 1.2.2

* Updated module manifest description for PSGallery
* Updated Resource and Property Types to include new entries from AWS Specifications
* Updated Convert-SpecToFunction to clean up bool attribute addition (intermittent conversion from bool to string) and also leverage $PSBoundParameters (slight speed and cleanliness boost)


## 1.2.0

* Restored Coveralls coverage in Pester tests
* Adjusted Export-VaporShell -ValidateTemplate to use file:// for the templateBody vs fileb:// (errors during Travis tests on Linux)


## 1.1.5

* Fixed default PowerShell JSON output formatting when using ConvertTo-Json; default formatting caused a large template to exceed CloudFormation's limits due to the extra spacing. Added in the private function `Format-Json` and set the default output to be cleaned up in `Export-VaporShell`


## 1.1.0

* Added `Update-VSResourceFunctions`
* Updated all Resource and Property Type functions

## 1.0.0

* Added full YAML support for import and export via leveraging `cfn-flip` from awslabs
* All functional issues resolved, ready to declare v1!


## 0.7.10

* Added full Serverless coverage
* Expanded `Add-UserData` functionality to detect ps1, bat & cmd files and tag them if needed


## 0.7.09

* Fixed issue where List parameters with single values were being cast as a single string/object instead of an array with a single string/object


## 0.7.08

* Added `-ValidateTemplate` parameter to leverage `aws cloudformation validate-template` for syntax validation


## 0.7.07

* AppVeyor config updates


## 0.7.06

* Added in FunctionBuilder and finished building all resource and resource property types


## 0.7.05

* Added `Add-UserData`


## 0.7.04

* Added Coveralls.io code coverage grading to CI process


## 0.7.03

* Expanded AppVeyor tests


## 0.7.02

* Updated module minor version to 7
