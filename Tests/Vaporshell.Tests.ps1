$PSVersion = $PSVersionTable.PSVersion.Major
$ModuleName = $ENV:BHProjectName
$ModulePath = Join-Path $ENV:BHProjectPath $ModuleName

# Verbose output for non-master builds on appveyor
# Handy for troubleshooting.
# Splat @Verbose against commands as needed (here or in pester tests)
    $Verbose = @{}
    if($ENV:BHBranchName -notlike "master" -or $env:BHCommitMessage -match "!verbose")
    {
        $Verbose.add("Verbose",$True)
    }


Import-Module $ModulePath -Force

$projectRoot = Resolve-Path "$PSScriptRoot\.."
$moduleRoot = Split-Path (Resolve-Path "$projectRoot\*\*.psd1")

Describe "General project validation: $moduleName" {

    $scripts = Get-ChildItem $projectRoot -Include *.ps1,*.psm1,*.psd1 -Recurse

    # TestCases are splatted to the script so we need hashtables
    $testCase = $scripts | Foreach-Object{@{file=$_}}         
    It "Script <file> should be valid Powershell" -TestCases $testCase {
        param($file)

        $file.fullname | Should Exist

        $contents = Get-Content -Path $file.fullname -ErrorAction Stop
        $errors = $null
        $null = [System.Management.Automation.PSParser]::Tokenize($contents, [ref]$errors)
        $errors.Count | Should Be 0
    }

    It "Module '$moduleName' can import cleanly" {
        {Import-Module (Join-Path $moduleRoot "$moduleName.psd1") -force } | Should Not Throw
    }
}

#<# Test frame borrowed from PSSlack by Warren Frame, will be updating with tests specific to this module once it's built out

Describe "Vaporshell Module PS$PSVersion" {
    Context 'Strict mode' {

        Set-StrictMode -Version latest

        It 'Should load and contain all expected functions' {
            $Module = Get-Module $ModuleName
            $Module.Name | Should be $ModuleName
            $Commands = $Module.ExportedCommands.Keys
            $Commands -contains 'Add-ConAnd' | Should Be $True
            $Commands -contains 'Add-ConEquals' | Should Be $True
            $Commands -contains 'Add-ConIf' | Should Be $True
            $Commands -contains 'Add-ConNot' | Should Be $True
            $Commands -contains 'Add-ConOr' | Should Be $True
            $Commands -contains 'Add-FnBase64' | Should Be $True
            $Commands -contains 'Add-FnFindInMap' | Should Be $True
            $Commands -contains 'Add-FnGetAtt' | Should Be $True
            $Commands -contains 'Add-FnGetAZs' | Should Be $True
            $Commands -contains 'Add-FnImportValue' | Should Be $True
            $Commands -contains 'Add-FnJoin' | Should Be $True
            $Commands -contains 'Add-FnRef' | Should Be $True
            $Commands -contains 'Add-FnSelect' | Should Be $True
            $Commands -contains 'Add-FnSplit' | Should Be $True
            $Commands -contains 'Add-FnSub' | Should Be $True
            $Commands -contains 'Add-Include' | Should Be $True
            $Commands -contains 'Export-Vaporshell' | Should Be $True
            $Commands -contains 'Import-Vaporshell' | Should Be $True
            $Commands -contains 'Initialize-Vaporshell' | Should Be $True
            $Commands -contains 'New-VaporCondition' | Should Be $True
            $Commands -contains 'New-VaporMapping' | Should Be $True
            $Commands -contains 'New-VaporMetadata' | Should Be $True
            $Commands -contains 'New-VaporOutput' | Should Be $True
            $Commands -contains 'New-VaporParameter' | Should Be $True
            $Commands -contains 'New-VaporResource' | Should Be $True
        }
    }
}

Describe "Initialize/Export/Import PS$PSVersion" {
    Context 'Strict mode' {

        Set-StrictMode -Version latest

        It 'Should build template as an object then export to JSON' {
            $testPath = "C:\projects\Vaporshell\Template.json"
            $templateInit = $null
            $templateInit = Initialize-Vaporshell -Description "Testing template build"
            $templateInit.AddParameter((New-VaporParameter -LogicalId "EnvType" -Type String -Default "test" -AllowedValues "test","prod" -Description "Environment type"))
            $templateInit.AddMetadata((New-VaporMetadata -LogicalId "Instances" -Metadata @{"Description" = "Information about the instances"}))
            $templateInit.AddCondition(
                (New-VaporCondition -LogicalId "CreateProdResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvType") -SecondValue "prod")),
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
                (New-VSEC2Instance -LogicalId "MyInstance" -AvailabilityZone "us-east-1a" -ImageId (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "us-west-1" -SecondLevelKey "32") -Condition "CreateProdResources")
            )
            $templateInit.AddOutput((New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") -Condition "CreateProdResources"))

            $testPath = "C:\projects\Vaporshell\Helpers\test.json"

            $fileUrl = "$((Resolve-Path $testPath).Path.Replace("\","/"))"

            Export-Vaporshell -VaporshellTemplate $templateInit -Path $testPath -Force
        }
        It 'Should export import existing CloudFormation template as Vaporshell.Template' {
            $testPath = "C:\projects\Vaporshell\Template.json"
            $template = Import-Vaporshell -Path $testPath
        }
        It 'Should export add new properties to the imported JSON object' {
            $testPath = "C:\projects\Vaporshell\Template.json"
            $template = Import-Vaporshell -Path $testPath
            $template.AddMetadata(
                (
                    New-VaporMetadata -LogicalId "Databases" -Metadata @{"Description" = "Information about the Databases"}
                )
            )
            $template.AddCondition(
                (
                    New-VaporCondition -LogicalId "CreateTestResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvType") -SecondValue "test")
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
            Export-Vaporshell -VaporshellTemplate $template -Path $testPath -Force
        }
        It 'Should show the correct types on each object' {
            $testPath = "C:\projects\Vaporshell\Template.json"
            $template = Import-Vaporshell -Path $testPath
            $template.AWSTemplateFormatVersion | Should BeOfType 'System.String'
            $template.Conditions | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Description | Should BeOfType 'System.String'
            $template.Mappings | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Metadata | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Outputs | Should BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Resources | Should BeOfType 'System.Management.Automation.PSCustomObject'
        }
    }
}
Describe "Running aws cloudformation validate-template PS$PSVersion" {
    Context 'Strict mode' {

        Set-StrictMode -Version latest

        It 'Should return System.String from validate-template' {
            aws cloudformation validate-template --template-body file://C:/projects/Vaporshell/Template2.json | Should BeOfType 'System.String'
        }
    }
}
Remove-Item "C:\projects\Vaporshell\Template.json" -Force -Confirm:$False -ErrorAction SilentlyContinue
Remove-Item "C:\projects\Vaporshell\Template2.json" -Force -Confirm:$False -ErrorAction SilentlyContinue