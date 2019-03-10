using namespace VaporShell.Core;
using namespace VaporShell.Resource.S3;

$PSVersion = $PSVersionTable.PSVersion.Major
$projectRoot = Resolve-Path "$PSScriptRoot\..\.."
$ModulePath = Resolve-Path "$($env:BHBuildOutput)\$($env:BHProjectName)"
$decompiledModulePath = Resolve-Path "$projectRoot\$($env:BHProjectName)"

# Verbose output for non-master builds on appveyor
# Handy for troubleshooting.
# Splat @Verbose against commands as needed (here or in pester tests)
$Verbose = @{}
if ($ENV:BHBranchName -eq "dev" -or $env:BHCommitMessage -match "!verbose" -or $ENV:TRAVIS_COMMIT_MESSAGE -match "!verbose" -or $ENV:TRAVIS_BRANCH -eq "dev" ) {
    $Verbose.add("Verbose",$True)
}

$moduleRoot = Split-Path (Resolve-Path "$ModulePath\*\*.psd1")
$udFile = (Resolve-Path "$PSScriptRoot\..\Assets\UserData.sh").Path

Write-Verbose "Importing $($env:BHProjectName) module at [$ModulePath]"
Import-Module $ModulePath -Force -ArgumentList $true -Verbose:$false
$currentFunctionCount = (Get-Command -Module Vaporshell).Count

Describe "Class tests: $($env:BHProjectName)" {
    Context "Class integration tests" {
        $template = [Template]@{
            Description = "Test template"
        }
        $S3 = [Bucket]@{
            LogicalId = "LogicalBucket";
            BucketName = "MyNewBucket";
            CreationPolicy = [CreationPolicy]@{
                AutoScalingCreationPolicy = [AutoScalingCreationPolicy]@{
                    MinSuccessfulInstancesPercent = 100;
                };
                ResourceSignal = [ResourceSignal]@{
                    Count = 3;
                    Timeout = "PT1H";
                }
            }
        }
        $S32 = [Bucket]@{
            LogicalId = "LogicalBucket2";
            BucketName = "MyNewBucket2";
            CreationPolicy = [CreationPolicy]@{
                AutoScalingCreationPolicy = [AutoScalingCreationPolicy]@{
                    MinSuccessfulInstancesPercent = 100;
                };
                ResourceSignal = [ResourceSignal]@{
                    Count = 3;
                    Timeout = "PT1H";
                }
            }
        }
        $S33 = [Bucket]@{
            LogicalId = "LogicalBucket2";
            BucketName = "MyNewBucket2";
            CreationPolicy = [CreationPolicy]@{
                AutoScalingCreationPolicy = [AutoScalingCreationPolicy]@{
                    MinSuccessfulInstancesPercent = 100;
                };
                ResourceSignal = [ResourceSignal]@{
                    Count = 3;
                    Timeout = "PT1H";
                }
            }
        }
        It "Should create a Template" {
            $template | Should -Not -BeNullOrEmpty
            $template | Should -BeOfType [VaporShell.Core.Template]
        }
        It "Should create an S3 Bucket" {
            $S3 | Should -Not -BeNullOrEmpty
            $S3 | Should -BeOfType [VaporShell.Resource.S3.Bucket]
        }
        It "Should add the S3 bucket to the template" {
            $template.AddResource($S3) | Should -BeNullOrEmpty
            $template.Resources.LogicalId | Should -Contain $S3.LogicalId
        }
        It "Should add a second S3 bucket to the template" {
            $template.AddResource($S32) | Should -BeNullOrEmpty
            $template.Resources.LogicalId | Should -Contain $S32.LogicalId
            $template.Resources.LogicalId.Count | Should -BeExactly 2
        }
        It "Should fail to add a third S3 Bucket with duplicate LogicalId" {
            {$template.AddResource($S33)} | Should -Throw
            $template.Resources.LogicalId.Count | Should -BeExactly 2
        }
        It "Should cast to Json" {
            {$template.ToJson()} | Should -Not -Throw
            {$template.ToJson($true)} | Should -Not -Throw
            {$template.ToJson($false)} | Should -Not -Throw
            $template.ToJson() | Should -BeOfType [System.String]
        }
        It "Should cast to Yaml" {
            {$template.ToYaml()} | Should -Not -Throw
            $template.ToYaml() | Should -BeOfType [System.String]
        }
    }
}
