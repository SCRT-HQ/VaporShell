$PSVersion = $PSVersionTable.PSVersion.Major
$ModuleName = "Vaporshell"
$projectRoot = Resolve-Path "$PSScriptRoot\.."
$ModulePath = Resolve-Path "$projectRoot\$ModuleName"

# Verbose output for non-master builds on appveyor
# Handy for troubleshooting.
# Splat @Verbose against commands as needed (here or in pester tests)
$Verbose = @{}
if ($ENV:BHBranchName -eq "dev" -or $env:BHCommitMessage -match "!verbose" -or $ENV:TRAVIS_COMMIT_MESSAGE -match "!verbose" -or $ENV:TRAVIS_BRANCH -eq "dev" ) {
    $Verbose.add("Verbose",$True)
}

$moduleRoot = Split-Path (Resolve-Path "$projectRoot\*\*.psd1")
$udFile = (Resolve-Path "$projectRoot\Tests\UserData.sh").Path

Describe "Module tests: $ModuleName" {
    Context "Confirm files are valid Powershell syntax" {
        $scripts = Get-ChildItem $projectRoot -Include *.ps1,*.psm1,*.psd1 -Recurse

        # TestCases are splatted to the script so we need hashtables
        $testCase = $scripts | Foreach-Object {@{file = $_}}         
        It "Script <file> should be valid Powershell" -TestCases $testCase {
            param($file)

            $file.fullname | Should Exist

            $contents = Get-Content -Path $file.fullname -ErrorAction Stop
            $errors = $null
            $null = [System.Management.Automation.PSParser]::Tokenize($contents, [ref]$errors)
            $errors.Count | Should Be 0
        }
    }
    Context 'Strict mode' {
        Import-Module $ModulePath -Force
        Set-StrictMode -Version latest

        It 'Should build template as an object then export to JSON' {
            $testPath = "$projectRoot\Template.json"
            $templateInit = $null
            $templateInit = Initialize-Vaporshell -Description "Testing template build"
            $templateInit.AddParameter((New-VaporParameter -LogicalId "EnvTypeString" -Type String -Default "test" -AllowedValues "test","prod" -Description "Environment type"))
            $templateInit.AddMetadata((New-VaporMetadata -LogicalId "Instances" -Metadata @{"Description" = "Information about the instances"}))
            $templateInit.AddCondition(
                (New-VaporCondition -LogicalId "CreateProdResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvTypeString") -SecondValue "prod")),
                (Add-Include -Location "s3://MyAmazonS3BucketName/single_wait_condition.yaml")
            )
            $templateInit.AddMapping(
                (New-VaporMapping -LogicalId "RegionMap" -Map ([PSCustomObject][Ordered]@{
                            "us-east-1" = [PSCustomObject][Ordered]@{
                                "32" = "ami-6411e20d"
                                "64" = "ami-7a11e213"
                            }
                            "us-west-1" = [PSCustomObject][Ordered]@{
                                "32" = "ami-c9c7978c"
                                "64" = "ami-cfc7978a"
                            }
                        })
                )
            )
            $templateInit.AddResource(
                (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment" -Description "My deployment" -RestApiId (Add-FnRef -Ref "MyApi") -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) -CacheClusterEnabled $true -CacheDataEncrypted $false)),
                (New-VSApiGatewayRestApi -LogicalId "MyApi" -Description "My REST API"),
                (New-VSEC2Instance -LogicalId "MyInstance" -AvailabilityZone "us-east-1a" -ImageId (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "us-west-1" -SecondLevelKey "32") -Condition "CreateProdResources" -Tags (Add-VSTag -Key "Name" -Value "MyInstance"),(Add-VSTag -Key "Environment" -Value "Production") -CreationPolicy (Add-CreationPolicy -MinSuccessfulInstancesPercent 100 -Count 1 -Timeout "PT5M") -UpdatePolicy (Add-UpdatePolicy -WillReplace $true -MaxBatchSize 2 -MinInstancesInService 2 -MinSuccessfulInstancesPercent 100 -PauseTime "PT30S" -WaitOnResourceSignals $true -IgnoreUnmodifiedGroupSizeProperties $true) -DeletionPolicy Delete -DependsOn "GatewayDeployment" -Metadata ([PSCustomObject]@{CommonName = "WebServer1"}))
            )
            $templateInit.AddOutput((New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") -Condition "CreateProdResources"))

            $testPath = "$projectRoot\Template.json"

            Export-Vaporshell -VaporshellTemplate $templateInit -Path $testPath -Force
        }
        It 'Should export import existing CloudFormation template as Vaporshell.Template' {
            $testPath = "$projectRoot\Template.json"
            $template = Import-Vaporshell -Path $testPath
        }
        It 'Should export add new properties to the imported JSON object' {
            $testPath = "$projectRoot\Template.json"
            $template = Import-Vaporshell -Path $testPath
            $template.AddMetadata(
                (
                    New-VaporMetadata -LogicalId "Databases" -Metadata @{"Description" = "Information about the Databases"}
                )
            )
            $template.AddCondition(
                (
                    New-VaporCondition -LogicalId "CreateTestResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvTypeString") -SecondValue "test")
                )
            )
            $template.AddMapping(
                (
                    New-VaporMapping -LogicalId "RegionMap2" -Map ([PSCustomObject][Ordered]@{
                            "us-east-2" = [PSCustomObject][Ordered]@{
                                "32" = "ami-6411e20d"
                                "64" = "ami-7a11e213"
                            }
                            "us-west-2" = [PSCustomObject][Ordered]@{
                                "32" = "ami-c9c7978c"
                                "64" = "ami-cfc7978a"
                            }
                        })
                )
            )
            $template.AddResource(
                (
                    New-VaporResource -LogicalId "MyInstance2" -Type "AWS::EC2::Instance" -Properties ([PSCustomObject][Ordered]@{
                            "AvailabilityZone" = "us-east-1b"
                            "ImageId"          = (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "us-west-2" -SecondLevelKey "32")
                        })
                )
            )
            $template.AddOutput(
                (
                    New-VaporOutput -LogicalId "PrimaryLoadBalancerDNSName" -Description "The DNSName of the primary load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "PrimaryLoadBalancer" -AttributeName "DNSName") -Condition "CreateTestResources"
                )
            )
            $vp1Params = @{
                    "LogicalID"             = "EnvType"
                    "Type"                  = "AWS::EC2::VPC::Id"
                    "Description"           = "VpcId of your existing Virtual Private Cloud (VPC)"
                    "ConstraintDescription" = "must be the VPC Id of an existing Virtual Private Cloud."
                }
            $vp2Params = @{
                    "LogicalID"             = "EnvType2"
                    "Type"                  = "AWS::EC2::VPC::Id"
                    "Description"           = "VpcId of your existing Virtual Private Cloud (VPC)2"
                    "ConstraintDescription" = "must be the VPC Id of an existing Virtual Private Cloud.2"
                }
            $template.AddParameter((New-VaporParameter @vp1Params))
            $template.AddParameter((New-VaporParameter @vp2Params))
            $template.AddResource(
                (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment3" -Description "My deployment" -RestApiId (Add-FnRef -Ref "MyApi") -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) -CacheClusterEnabled $true -CacheDataEncrypted $false)),
                (New-VSApiGatewayRestApi -LogicalId "MyApi3" -Description "My REST API"),
                (New-VSEC2Instance -LogicalId "MyInstance3" -AvailabilityZone "us-east-1a" -ImageId (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "us-west-1" -SecondLevelKey "32") -Condition "CreateProdResources" -Tags (Add-VSTag -Key "Name" -Value "MyInstance"),(Add-VSTag -Key "Environment" -Value "Production") -CreationPolicy (Add-CreationPolicy -MinSuccessfulInstancesPercent 100 -Count 1 -Timeout "PT5M") -UpdatePolicy (Add-UpdatePolicy -WillReplace $true -MaxBatchSize 2 -MinInstancesInService 2 -MinSuccessfulInstancesPercent 100 -PauseTime "PT30S" -WaitOnResourceSignals $true -IgnoreUnmodifiedGroupSizeProperties $true) -DeletionPolicy Delete -DependsOn "GatewayDeployment3" -Metadata ([PSCustomObject]@{CommonName = "WebServer1"}) -UserData (Add-UserData -File $udFile))
            )
            $template.AddOutput((New-VaporOutput -LogicalId "BackupLoadBalancerDNSName3" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer3" -AttributeName "DNSName") -Condition "CreateProdResources"))

            Export-Vaporshell -VaporshellTemplate $template -Path $testPath -Force
        }
        It 'Should show the correct types on each object' {
            $testPath = "$projectRoot\Template.json"
            $template = Import-Vaporshell -Path $testPath
            $template.AWSTemplateFormatVersion | Should BeOfType 'System.String'
            $template.Conditions | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Description | Should BeOfType 'System.String'
            $template.Mappings | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Metadata | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Outputs | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Resources | Should BeOfType 'System.Management.Automation.PSCustomObject'
        }
        It 'Should return System.String from validate-template' {
            $testPath = "$projectRoot\Template.json"
            $fileUrl = "$((Resolve-Path $testPath).Path.Replace("\","/"))"
            try {
                $valid = aws cloudformation validate-template --template-body file://$fileUrl
                $valid | Should BeOfType 'System.String'
            }
            catch { }
        }
    }
}
Remove-Item "$projectRoot\Template.json" -Force -Confirm:$False -ErrorAction SilentlyContinue
Remove-Item "$projectRoot\Template2.json" -Force -Confirm:$False -ErrorAction SilentlyContinue