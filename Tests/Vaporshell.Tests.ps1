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

        It 'Should load' {
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

        It 'Should build template as correct JSON and be read back without error' {
            $testPath = "$ModulePath\Template.json"
            $templateInit = Initialize-Vaporshell -Description "Testing"
            $templateInit.AddMetadata(
                (
                    New-VaporMetadata -LogicalId "Instances" -Metadata @{"Description" = "Information about the instances"}
                )
            )
            $templateInit.AddCondition(
                (
                    New-VaporCondition -LogicalId "CreateProdResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvType") -SecondValue "prod")
                ),
                (
                    Add-Include -Location "s3://MyAmazonS3BucketName/single_wait_condition.yaml"
                )
            )
            $templateInit.AddMapping(
                (
                    New-VaporMapping -LogicalId "RegionMap" -Map ([PSCustomObject][Ordered]@{
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
                (
                    New-VaporResource -LogicalId "MyInstance" -Type "AWS::EC2::Instance" -Properties ([PSCustomObject][Ordered]@{
                            "UserProperties"   = (Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues "Queue=",(Add-FnRef -Ref "MyQueue")))
                            "AvailabilityZone" = "us-east-1a"
                            "ImageId"          = (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey $_AWSRegion -SecondLevelKey "32")
                        })
                )
            )
            $templateInit.AddOutput(
                (
                    New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") -Condition "CreateProdResources" -Verbose
                )
            )

            Export-Vaporshell -VaporshellTemplate $templateInit -Path $testPath -Force
            $template = Import-Vaporshell -Path $testPath

            $template.AWSTemplateFormatVersion | Should be 'System.String'
            $template.Conditions | Should be 'System.Collections.Hashtable'
            $template.Description | Should be 'System.String'
            $template.Mappings | Should be 'System.Collections.Hashtable'
            $template.Metadata | Should be 'System.Collections.Hashtable'
            $template.Outputs | Should be 'System.Collections.Hashtable'
            $template.Resources | Should be 'System.Collections.Hashtable'
        }
    }
}
Remove-Item "$ModulePath\Template.json" -Force -Confirm:$False