$PSVersion = $PSVersionTable.PSVersion.Major
$projectRoot = Resolve-Path "$PSScriptRoot\..\.."
$BuildOutputPath = [System.IO.Path]::Combine($projectRoot,'BuildOutput')
if (($env:PSModulePath -split ';') -notcontains $BuildOutputPath) {
    $env:PSModulePath = @($BuildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}
$ModulePath = Resolve-Path "$projectRoot\BuildOutput\$($env:BHProjectName)"
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
Import-Module $ModulePath -Force -Verbose:$false
$currentFunctionCount = (Get-Command -Module Vaporshell).Count

Describe "Unit tests" -Tag 'Unit','VaporShellUnit','VaporShell' {
    BeforeAll {
        $projectRoot = Resolve-Path "$PSScriptRoot\..\.."
        $BuildOutputPath = [System.IO.Path]::Combine($projectRoot,'BuildOutput')
        if (($env:PSModulePath -split ';') -notcontains $BuildOutputPath) {
            $env:PSModulePath = @($BuildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
        }
        Import-Module VaporShell,VaporShell.ApiGateway,VaporShell.EC2,VaporShell.S3 -Force
    }
    Context 'Functions' {
        if ($env:AWS_ACCESS_KEY_ID -and $env:AWS_SECRET_ACCESS_KEY) {
            It 'Should set the credentials correctly on the shared file' {
                Set-VSCredential -AccessKey $env:AWS_ACCESS_KEY_ID -SecretKey $env:AWS_SECRET_ACCESS_KEY -Region "USWest2" -ProfileName 'pester'
            }
        }
        It 'Should build template as an object then export to JSON' {
            Import-Module VaporShell.ApiGateway
            $testPath = "$projectRoot\Template.json"
            $templateInit = $null
            $templateInit = Initialize-Vaporshell -Description "Testing template build"
            {$templateInit.AddParameter((New-VaporParameter -LogicalId "EnvTypeString" -Type String -Default "test" -AllowedValues "test","prod" -Description "Environment type"))} | Should -Not -Throw
            {$templateInit.AddMetadata((New-VaporMetadata -LogicalId "Instances" -Metadata @{"Description" = "Information about the instances"}))} | Should -Not -Throw
            {$templateInit.AddCondition((
                (New-VaporCondition -LogicalId "CreateProdResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvTypeString") -SecondValue "prod")),
                (Add-Include -Location "s3://MyAmazonS3BucketName/single_wait_condition.yaml")
            ))} | Should -Not -Throw
            {$templateInit.AddMapping((
                (New-VaporMapping -LogicalId "RegionMap" -Map @{
                        "us-east-1" = @{
                            "32" = "ami-6411e20d"
                            "64" = "ami-7a11e213"
                        }
                        "us-west-1" = @{
                            "32" = "ami-c9c7978c"
                            "64" = "ami-cfc7978a"
                        }
                    }
                )
            ))} | Should -Not -Throw
            {$templateInit.AddResource((
                (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment" -Description "My deployment" -RestApiId (Add-FnRef -Ref "MyApi") -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) -CacheClusterEnabled $true -CacheDataEncrypted $false)),
                (New-VSApiGatewayRestApi -LogicalId "MyApi" -Description "My REST API"),
                (New-VSEC2Instance -LogicalId "MyInstance" -AvailabilityZone "us-east-1a" -ImageId (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "us-west-1" -SecondLevelKey "32") -Condition "CreateProdResources" -Tags (Add-VSTag -Key "Name" -Value "MyInstance"),(Add-VSTag -Key "Environment" -Value "Production") -CreationPolicy (Add-CreationPolicy -MinSuccessfulInstancesPercent 100 -Count 1 -Timeout "PT5M") -UpdatePolicy (Add-UpdatePolicy -WillReplace $true -MaxBatchSize 2 -MinInstancesInService 2 -MinSuccessfulInstancesPercent 100 -PauseTime "PT30S" -WaitOnResourceSignals $true -IgnoreUnmodifiedGroupSizeProperties $true) -DeletionPolicy Delete -DependsOn "GatewayDeployment" -Metadata (@{CommonName = "WebServer1"}))
            ))} | Should -Not -Throw
            {$templateInit.AddOutput((New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") -Condition "CreateProdResources"))} | Should -Not -Throw

            $testPath = "$projectRoot\Template.json"

            {Export-Vaporshell -VaporshellTemplate $templateInit -Path $testPath -Force} | Should -Not -Throw

            {$templateInit.RemoveCondition("CreateProdResources")} | Should -Not -Throw
            {$templateInit.RemoveMapping("RegionMap")} | Should -Not -Throw
            {$templateInit.RemoveParameter("EnvTypeString")} | Should -Not -Throw
            {$templateInit.RemoveMetadata("Instances")} | Should -Not -Throw
            {$templateInit.RemoveResource("GatewayDeployment")} | Should -Not -Throw
            {$templateInit.RemoveOutput("BackupLoadBalancerDNSName")} | Should -Not -Throw
        }
        It 'Should export import existing CloudFormation template as Vaporshell.Template' {
            $testPath = "$projectRoot\Template.json"
            {Import-Vaporshell -Path $testPath} | Should -Not -Throw
        }
        It 'Should export add new properties to the imported JSON object' {
            $testPath = "$projectRoot\Template.json"
            $template = Import-Vaporshell -Path $testPath
            {$template.AddMetadata(
                (
                    New-VaporMetadata -LogicalId "Databases" -Metadata @{"Description" = "Information about the Databases"}
                )
            )} | Should -Not -Throw
            {$template.AddCondition(
                (
                    New-VaporCondition -LogicalId "CreateTestResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvTypeString") -SecondValue "test")
                )
            )} | Should -Not -Throw
            {$template.AddMapping(
                (
                    New-VaporMapping -LogicalId "RegionMap2" -Map (@{
                            "us-east-2" = @{
                                "32" = "ami-6411e20d"
                                "64" = "ami-7a11e213"
                            }
                            "us-west-2" = @{
                                "32" = "ami-c9c7978c"
                                "64" = "ami-cfc7978a"
                            }
                        })
                )
            )} | Should -Not -Throw
            {$template.AddResource(
                (
                    New-VaporResource -LogicalId "MyInstance2" -Type "AWS::EC2::Instance" -Properties (@{
                            "AvailabilityZone" = "us-east-1b"
                            "ImageId"          = (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "us-west-2" -SecondLevelKey "32")
                        })
                )
            )} | Should -Not -Throw
            {$template.AddOutput(
                (
                    New-VaporOutput -LogicalId "PrimaryLoadBalancerDNSName" -Description "The DNSName of the primary load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "PrimaryLoadBalancer" -AttributeName "DNSName") -Condition "CreateTestResources"
                )
            )} | Should -Not -Throw
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
            {$template.AddParameter((New-VaporParameter @vp1Params))} | Should -Not -Throw
            {$template.AddParameter((New-VaporParameter @vp2Params))} | Should -Not -Throw
            {$template.AddResource((
                (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment3" -Description "My deployment" -RestApiId (Add-FnRef -Ref "MyApi") -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) -CacheClusterEnabled $true -CacheDataEncrypted $false)),
                (New-VSApiGatewayRestApi -LogicalId "MyApi3" -Description "My REST API"),
                (New-VSEC2Instance -LogicalId "MyInstance3" -AvailabilityZone "us-east-1a" -ImageId (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "us-west-1" -SecondLevelKey "32") -Condition "CreateProdResources" -Tags (Add-VSTag -Key "Name" -Value "MyInstance"),(Add-VSTag -Key "Environment" -Value "Production") -CreationPolicy (Add-CreationPolicy -MinSuccessfulInstancesPercent 100 -Count 1 -Timeout "PT5M") -UpdatePolicy (Add-UpdatePolicy -WillReplace $true -MaxBatchSize 2 -MinInstancesInService 2 -MinSuccessfulInstancesPercent 100 -PauseTime "PT30S" -WaitOnResourceSignals $true -IgnoreUnmodifiedGroupSizeProperties $true) -DeletionPolicy Delete -DependsOn "GatewayDeployment3" -Metadata ([PSCustomObject]@{CommonName = "WebServer1"}) -UserData (Add-UserData -File $udFile))
            ))} | Should -Not -Throw
            {$template.AddOutput((New-VaporOutput -LogicalId "BackupLoadBalancerDNSName3" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer3" -AttributeName "DNSName") -Condition "CreateProdResources"))} | Should -Not -Throw

            {Export-Vaporshell -VaporshellTemplate $template -Path $testPath -Force} | Should -Not -Throw
        }
        It 'Should show the correct types on each object' {
            $testPath = "$projectRoot\Template.json"
            $template = Import-Vaporshell -Path $testPath
            $template.Conditions | Should -BeOfType 'System.Collections.Specialized.OrderedDictionary'
            $template.Description | Should -BeOfType 'System.String'
            $template.Mappings | Should -BeOfType 'System.Collections.Specialized.OrderedDictionary'
            $template.Metadata | Should -BeOfType 'System.Collections.Specialized.OrderedDictionary'
            $template.Outputs | Should -BeOfType 'System.Collections.Specialized.OrderedDictionary'
            $template.Resources | Should -BeOfType 'System.Collections.Specialized.OrderedDictionary'
        }
        if ($env:APPVEYOR) {
            It 'Should export the template to YAML using cfn-flip and validate using the AWS SDK from Export-Vaporshell' {
                $testPath = "$projectRoot\Template.yaml"
                {$template = Import-Vaporshell -Path "$projectRoot\Template.json"} | Should -Not -Throw
                {$valid = Export-Vaporshell -VaporshellTemplate $template -As YAML -Path $testPath -ValidateTemplate -Force} | Should -Not -Throw
                $valid | Should -BeOfType 'Amazon.CloudFormation.Model.ValidateTemplateResponse'
            }
        }
        It 'Should run remaining condition functions' {
            $x = Add-ConAnd -Conditions (Add-ConIf -ConditionName "CreateTestResources" -ValueIfTrue "test" -ValueIfFalse "$_AWSNoValue"),(Add-ConNot -Condition (Add-FnImportValue -ValueToImport "VPCName")),(Add-ConEquals -FirstValue (Add-FnRef "Environment") -SecondValue "prod"),(Add-ConOr -Conditions (Add-ConIf -ConditionName "CreateTestResources" -ValueIfTrue "test" -ValueIfFalse "$_AWSNoValue"),(Add-ConNot -Condition (Add-FnSplit -Delimiter "," -SourceString "test,string,goodness")))
            $x.PSTypeNames[0] | Should -Be 'ConAnd'
        }
        It 'Should not throw intrinsic functions' {
            {Add-FnSub -String "www.`${Domain}" -Mapping @{Domain = (Add-FnRef -Ref "RootDomainName")}} | Should -Not -Throw
            {Add-FnSub -String "/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfig --configsets wordpress_install --region ${AWS::Region}"} | Should -Not -Throw
            {Add-FnGetAZs} | Should -Not -Throw
            {Add-FnGetAZs -Region $_AWSRegion} | Should -Not -Throw
            {Add-FnSelect -Index 1 -ListOfObjects (Add-FnSplit -Delimiter "," -SourceString "one,two,three")} | Should -Not -Throw
        }
        It 'Should throw primary functions' {
            {New-VaporResource -LogicalId "!@#$%*&" -Type 'Custom::Type'} | Should -Throw "The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template."
            {New-VaporResource -LogicalId "Tests" -Properties 1 -Type 'Custom::Type'} | Should -Throw -ExpectedMessage 'Cannot process argument transformation on parameter ''Properties''. Cannot convert the "1" value of type "System.Int32" to type "VSHashtable".'
            {New-VaporResource -LogicalId "Tests" -Properties ([PSCustomObject]@{Name = "Test"}) -Type "AWS::EC2::Instance" -CreationPolicy 1} | Should -Throw 'Cannot process argument transformation on parameter ''CreationPolicy''. Cannot convert the "1" value of type "System.Int32" to type "CreationPolicy".'
            {New-VaporResource -LogicalId "Tests" -Properties ([PSCustomObject]@{Name = "Test"}) -Type "AWS::EC2::Instance" -UpdatePolicy 1} | Should -Throw 'Cannot process argument transformation on parameter ''UpdatePolicy''. Cannot convert the "1" value of type "System.Int32" to type "UpdatePolicy".'
            {New-VaporResource -LogicalId "Tests" -Properties ([PSCustomObject]@{Name = "Test"}) -Type "AWS::EC2::Instance" -Metadata 1} | Should -Throw 'Cannot process argument transformation on parameter ''Metadata''. Cannot convert the "1" value of type "System.Int32" to type "System.Collections.IDictionary".'
            {New-VaporMetadata -LogicalId "!@#$%*&" -Metadata @{meta='data'}} | Should -Throw
            {New-VaporMetadata -LogicalId "Test" -Metadata 1} | Should -Throw
            {New-VaporMapping -LogicalId "!@#$%*&"} | Should -Throw
            {New-VaporMapping -LogicalId "Test" -Map 1} | Should -Throw
            {New-VaporCondition -LogicalId "!@#$%*&"} | Should -Throw
            {New-VaporCondition -LogicalId "Test" -Condition 1} | Should -Throw
            {New-VaporOutput -LogicalId "!@#$%*&"} | Should -Throw
            {New-VaporOutput -LogicalId "Test" -Value "String" -Export "Export"} | Should -Not -Throw
            {New-VaporParameter -LogicalId "!@#$%*&" -Type String} | Should -Throw
            {New-VaporParameter -LogicalId "PW" -Type String -Description "$(1..5000)"} | Should -Throw -ExpectedMessage 'The character length of the 23892 argument is too long. Shorten the character length of the argument so it is fewer than or equal to "4000" characters, and then try the command again.'
            {New-VaporParameter -LogicalId "PW" -NoEcho -Type String -AllowedPattern ".*" -MaxLength 50 -MinLength 1 -MaxValue 50 -MinValue 1 -Default "woooo"} | Should -Not -Throw
        }
        It 'Should throw main commands' {
            Import-Module VaporShell,VaporShell.S3
            $t = Initialize-Vaporshell
            {Export-Vaporshell -VaporshellTemplate $t} | Should -Throw "Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum."
            {$t.AddTransform((Add-Include -Location "s3://file.yaml"))} | Should -Not -Throw
            $t.AddResource((New-VSS3Bucket -LogicalId "Bucket" -BucketName 'mybucket'))
            $t.AddResource((New-VSS3Bucket -LogicalId "Bucket2" -BucketName 'mybucket2'))
            {Export-Vaporshell -VaporshellTemplate $t | Should -BeOfType 'String'} | Should -Not -Throw
            {$t.AddResource("Fail")} | Should -Throw "System.String is an invalid type for this property. Valid types include: System.Collections.IDictionary, System.Management.Automation.PSObject, VSHashtable, VSObject"
            {$t.AddCondition("Fail")} | Should -Throw "System.String is an invalid type for this property. Valid types include: System.Collections.IDictionary, System.Management.Automation.PSObject, VSHashtable, VSObject"
            {$t.AddParameter("Fail")} | Should -Throw "System.String is an invalid type for this property. Valid types include: System.Collections.IDictionary, System.Management.Automation.PSObject, VSHashtable, VSObject"
            {$t.AddMetadata("Fail")} | Should -Throw "System.String is an invalid type for this property. Valid types include: System.Collections.IDictionary, System.Management.Automation.PSObject, VSHashtable, VSObject"
            {$t.AddMapping("Fail")} | Should -Throw "System.String is an invalid type for this property. Valid types include: System.Collections.IDictionary, System.Management.Automation.PSObject, VSHashtable, VSObject"
            {$t.AddMapping("Fail")} | Should -Throw "System.String is an invalid type for this property. Valid types include: System.Collections.IDictionary, System.Management.Automation.PSObject, VSHashtable, VSObject"
        }
        if ($env:APPVEYOR) {
            It 'Should function the same for imported templates' {
                $path = (Resolve-Path "$projectRoot\Template.yaml").Path
                $t = Import-Vaporshell -Path $path
                {$t.RemoveCondition("CreateProdResources","Fn::Transform","CreateTestResources")} | Should -Not -Throw
                {$t.RemoveMapping("RegionMap","RegionMap2")} | Should -Not -Throw
                {$t.RemoveParameter("EnvTypeString","EnvType","EnvType2")} | Should -Not -Throw
                {$t.RemoveMetadata("Instances","Databases")} | Should -Not -Throw
                {$t.RemoveResource("GatewayDeployment","MyApi","MyInstance","MyInstance2","GatewayDeployment3","MyApi3","MyInstance3")} | Should -Not -Throw
                {$t.RemoveOutput("BackupLoadBalancerDNSName","PrimaryLoadBalancerDNSName","BackupLoadBalancerDNSName3")} | Should -Not -Throw
            }
        }
    }
}
Remove-Item "$projectRoot\Template.json","$projectRoot\Template.yaml","$projectRoot\Template2.json"  -Force -Confirm:$False -ErrorAction SilentlyContinue
