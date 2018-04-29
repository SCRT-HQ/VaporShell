$PSVersion = $PSVersionTable.PSVersion.Major
$ModuleName = "VaporShell"
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

Import-Module $ModulePath -Force -ArgumentList $true
$currentFunctionCount = (Get-Command -Module Vaporshell).Count

Describe "Previous build validation" {
    Context "Failure breadcrumb from previous build" {
        It "Should not exist" {
            "$projectRoot\BuildFailed.txt" | Should -Not -Exist
        }
    }
}

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
        
        It 'Should update Resource/Property Type functions' {
            Update-VSResourceFunctions
            Remove-Module Vaporshell
            Import-Module $ModulePath -Force -ArgumentList $true
            $newFunctionCount = (Get-Command -Module Vaporshell).Count
            $newFunctionCount -ge $currentFunctionCount | Should Be $true
        }
        if ($env:APPVEYOR) {
            It 'Should set the credentials correctly on the shared file' {
                Set-VSCredential -AccessKey $Env:AWS_ACCESS_KEY_ID -SecretKey $Env:AWS_SECRET_ACCESS_KEY -Region "USWest1"
            }
        }
    }

    Context "Confirm there are no duplicate function names in private and public folders" {
        It 'Should have no duplicate functions' {
            $functions = Get-ChildItem "$moduleRoot\Public" -Recurse -Include *.ps1 | Select-Object -ExpandProperty BaseName
            $functions += Get-ChildItem "$moduleRoot\Private" -Recurse -Include *.ps1 | Select-Object -ExpandProperty BaseName
            ($functions | Group-Object | Where-Object {$_.Count -gt 1}).Count | Should -BeLessThan 1
        }
    }
}

Describe "Unit tests" {
    Context 'Strict mode' {
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

            {$templateInit.RemoveCondition("CreateProdResources")} | Should Not throw
            {$templateInit.RemoveMapping("RegionMap")} | Should Not throw
            {$templateInit.RemoveParameter("EnvTypeString")} | Should Not throw
            {$templateInit.RemoveMetadata("Instances")} | Should Not throw
            {$templateInit.RemoveResource("GatewayDeployment")} | Should Not throw
            {$templateInit.RemoveOutput("BackupLoadBalancerDNSName")} | Should Not throw
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
        if ($env:APPVEYOR) {
            It 'Should export the template to YAML using cfn-flip and validate using the AWS SDK from Export-Vaporshell' {
                $testPath = "$projectRoot\Template.yaml"
                $template = Import-Vaporshell -Path "$projectRoot\Template.json"
                $valid = Export-Vaporshell -VaporshellTemplate $template -As YAML -Path $testPath -ValidateTemplate -Force
                $valid | Should BeOfType 'Amazon.CloudFormation.Model.ValidateTemplateResponse'
            }
        }
        It 'Should run remaining condition functions' {
            $x = Add-ConAnd -Conditions (Add-ConIf -ConditionName "CreateTestResources" -ValueIfTrue "test" -ValueIfFalse "$_AWSNoValue"),(Add-ConNot -Condition (Add-FnImportValue -ValueToImport "VPCName")),(Add-ConEquals -FirstValue (Add-FnRef "Environment") -SecondValue "prod"),(Add-ConOr -Conditions (Add-ConIf -ConditionName "CreateTestResources" -ValueIfTrue "test" -ValueIfFalse "$_AWSNoValue"),(Add-ConNot -Condition (Add-FnSplit -Delimiter "," -SourceString "test,string,goodness")))
            $x.PSTypeNames[0] | Should Be 'Vaporshell.Condition.And'
        }
        It 'Should throw intrinsic functions' {
            {Add-FnJoin -ListOfValues 1} | Should throw
            {Add-FnBase64 -ValueToEncode 1} | Should throw
            {Add-FnGetAtt -LogicalNameOfResource "Vapor" -AttributeName 1} | Should throw
            {Add-FnFindInMap -MapName 0 -TopLevelKey "First" -SecondLevelKey "Second"} | Should throw
            {Add-FnFindInMap -MapName "Map" -TopLevelKey 1 -SecondLevelKey "Second"} | Should throw
            {Add-FnFindInMap -MapName "Map" -TopLevelKey "First" -SecondLevelKey 2} | Should throw
            {Add-FnSplit -Delimiter "," -SourceString 1} | Should throw
            {Add-FnImportValue -ValueToImport 1} | Should throw
            {Add-FnSub -String "www.`${Domain}" -Mapping @{Domain = (Add-FnRef -Ref "RootDomainName")}} | Should Not throw
            {Add-FnSub -String "/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfig --configsets wordpress_install --region ${AWS::Region}"} | Should Not throw
            {Add-FnGetAZs} | Should Not throw
            {Add-FnGetAZs -Region $_AWSRegion} | Should Not throw
            {Add-FnGetAZs -Region 1} | Should throw
            {Add-FnSelect -Index 1 -ListOfObjects (Add-FnSplit -Delimiter "," -SourceString "one,two,three")} | Should Not throw
            {Add-FnSelect -Index (@{}) -ListOfObjects (Add-FnSplit -Delimiter "," -SourceString "one,two,three")} | Should throw
            {Add-FnSelect -Index 1 -ListOfObjects 1} | Should throw
        }
        It 'Should throw primary functions' {
            {New-VaporResource -LogicalId "!@#$%*&"} | Should throw "The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template."
            {New-VaporResource -LogicalId "Tests" -Properties 1} | Should throw "This parameter only accepts the following types: System.Management.Automation.PSCustomObject, Vaporshell.Resource.Properties, System.Collections.Hashtable. The current types of the value are: System.Int32, System.ValueType, System.Object."
            {New-VaporResource -LogicalId "Tests" -Properties ([PSCustomObject]@{Name = "Test"}) -Type "AWS::EC2::Instance" -CreationPolicy 1} | Should throw "This parameter only accepts the following types: Vaporshell.Resource.CreationPolicy. The current types of the value are: System.Int32, System.ValueType, System.Object."
            {New-VaporResource -LogicalId "Tests" -Properties ([PSCustomObject]@{Name = "Test"}) -Type "AWS::EC2::Instance" -UpdatePolicy 1} | Should throw "This parameter only accepts the following types: Vaporshell.Resource.UpdatePolicy. The current types of the value are: System.Int32, System.ValueType, System.Object."
            {New-VaporResource -LogicalId "Tests" -Properties ([PSCustomObject]@{Name = "Test"}) -Type "AWS::EC2::Instance" -Metadata 1} | Should throw "This parameter only accepts the following types: System.Management.Automation.PSCustomObject. The current types of the value are: System.Int32, System.ValueType, System.Object." 
            {New-VaporMetadata -LogicalId "!@#$%*&"} | Should throw
            {New-VaporMetadata -LogicalId "Test" -Metadata 1} | Should throw
            {New-VaporMapping -LogicalId "!@#$%*&"} | Should throw
            {New-VaporMapping -LogicalId "Test" -Map 1} | Should throw
            {New-VaporCondition -LogicalId "!@#$%*&"} | Should throw
            {New-VaporCondition -LogicalId "Test" -Condition 1} | Should throw
            {New-VaporOutput -LogicalId "!@#$%*&"} | Should throw
            {New-VaporOutput -LogicalId "Test" -Value "String" -Export "Export"} | Should Not throw
            {New-VaporParameter -LogicalId "!@#$%*&"} | Should throw
            {New-VaporParameter -LogicalId "PW" -Description "$(1..5000)"} | Should throw "The description length needs to be less than 4000 characters long."
            {New-VaporParameter -LogicalId "PW" -NoEcho -Type String -AllowedPattern ".*" -MaxLength 50 -MinLength 1 -MaxValue 50 -MinValue 1 -Default "woooo"} | Should Not throw
        }
        It 'Should throw main commands' {
            $t = Initialize-Vaporshell
            {Export-Vaporshell -VaporshellTemplate $t} | Should throw "Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum."
            {$t.AddTransform("Fail")} | Should throw "You must use one of the following object types with this parameter: Vaporshell.Transform.Include"
            {$t.AddTransform((Add-Include -Location "s3://file.yaml"))} | Should Not throw
            $t.AddResource((New-SAMSimpleTable -LogicalId "Table"))
            $t.Transform = "asfd"
            $t.AddResource((New-SAMSimpleTable -LogicalId "Table2"))
            {Export-Vaporshell -VaporshellTemplate $t | Should BeOfType 'String'} | Should Not throw
            {$t.AddResource("Fail")} | Should throw "You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Resource"
            {$t.AddCondition("Fail")} | Should throw "You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Condition"
            {$t.AddParameter("Fail")} | Should throw "You must use one of the following object types with this parameter: Vaporshell.Parameter"
            {$t.AddMetadata("Fail")} | Should throw "You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Metadata"
            {$t.AddMapping("Fail")} | Should throw "You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Mapping"
            {$t.AddMapping("Fail")} | Should throw "You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Mapping"
        }
        if ($env:APPVEYOR) {
            It 'Should function the same for imported templates' {
                $path = (Resolve-Path "$projectRoot\Template.yaml").Path
                $t = Import-Vaporshell -Path $path
                {$t.RemoveCondition("CreateProdResources","Fn::Transform","CreateTestResources")} | Should Not throw
                {$t.RemoveMapping("RegionMap","RegionMap2")} | Should Not throw
                {$t.RemoveParameter("EnvTypeString","EnvType","EnvType2")} | Should Not throw
                {$t.RemoveMetadata("Instances","Databases")} | Should Not throw
                {$t.RemoveResource("GatewayDeployment","MyApi","MyInstance","MyInstance2","GatewayDeployment3","MyApi3","MyInstance3")} | Should Not throw
                {$t.RemoveOutput("BackupLoadBalancerDNSName","PrimaryLoadBalancerDNSName","BackupLoadBalancerDNSName3")} | Should Not throw
            }
        }
    }
}
Describe "Module load test: Standard method" {
    It 'Should import the module fine without dot sourcing the ps1 files' {
        Remove-Module $ModuleName -ErrorAction SilentlyContinue
        Import-Module $ModulePath -Force
    }
}
Remove-Item "$projectRoot\Template.json","$projectRoot\Template.yaml","$projectRoot\Template2.json"  -Force -Confirm:$False -ErrorAction SilentlyContinue