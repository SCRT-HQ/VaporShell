| Master | Dev |
|:------:|:---:|
| [![Build status](https://ci.appveyor.com/api/projects/status/8a4jsfv42tbmlym8/branch/master?svg=true)](https://ci.appveyor.com/project/nferrell/vaporshell/branch/master) | [![Build status](https://ci.appveyor.com/api/projects/status/8a4jsfv42tbmlym8/branch/dev?svg=true)](https://ci.appveyor.com/project/nferrell/vaporshell/branch/dev)

# *Vaporshell*

Powershell module for building AWS CloudFormation JSON templates using Powershell syntax, abstracting working with JSON, etc. Essentially a Powershell equivalent to Troposphere for Python.

***

## Examples
_Full documentation is being prepared right now._

```powershell
$templateInit = $null
$templateInit = Initialize-Vaporshell -Description "Testing"
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
    (New-VaporResource -LogicalId "MyInstance" -Type "AWS::EC2::Instance" -Properties ([PSCustomObject][Ordered]@{
            "UserProperties"   = (Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues "Queue=",(Add-FnRef -Ref "MyQueue")))
            "AvailabilityZone" = "us-east-1a"
            "ImageId"          = (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey $_AWSRegion -SecondLevelKey "32")
        })
    )
)
$templateInit.AddOutput((New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") -Condition "CreateProdResources"))

# Export the initial Template object to JSON
$testPath = "$($PSScriptRoot)\test.json"
Export-Vaporshell -VaporshellTemplate $templateInit -Path $testPath -Force

# Import a template file and add new properties to the template
$template = Import-Vaporshell -Path $testPath
$template.AddMetadata((New-VaporMetadata -LogicalId "Databases" -Metadata @{"Description" = "Information about the Databases"}))
$template.AddCondition((New-VaporCondition -LogicalId "CreateTestResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvType") -SecondValue "test")))
$template.AddMapping(
    (New-VaporMapping -LogicalId "RegionMap2" -Map ([PSCustomObject][Ordered]@{
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
    (New-VaporResource -LogicalId "MyInstance2" -Type "AWS::EC2::Instance" -Properties ([PSCustomObject][Ordered]@{
            "UserProperties"   = (Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues "Queue=",(Add-FnRef -Ref "MyQueue")))
            "AvailabilityZone" = "us-east-1b"
            "ImageId"          = (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey $_AWSRegion -SecondLevelKey "32")
        })
    )
)
$template.AddOutput((New-VaporOutput -LogicalId "PrimaryLoadBalancerDNSName" -Description "The DNSName of the primary load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "PrimaryLoadBalancer" -AttributeName "DNSName") -Condition "CreateTestResources"))
```


**WORK IN PROGRESS**
**Full documentation coming soon!** 