| AppVeyor (Windows) :: Master | AppVeyor (Windows) :: Dev | Travis CI* (Linux/macOS) :: Master | Travis CI* (Linux/macOS) :: Dev
|:----------------------------:|:-------------------------:|:---------------------------------:|:------------------------------:|
| [![Build status](https://ci.appveyor.com/api/projects/status/8a4jsfv42tbmlym8/branch/master?svg=true)](https://ci.appveyor.com/project/nferrell/vaporshell/branch/master) | [![Build status](https://ci.appveyor.com/api/projects/status/8a4jsfv42tbmlym8/branch/dev?svg=true)](https://ci.appveyor.com/project/nferrell/vaporshell/branch/dev) | _Coming soon!_ | _Coming soon!_

##### _*Travis CI tests are currently being built out (not the best Linux admin myself admittedly), but the same tests being run within AppVeyor are being manually ran in terminal on an Ubuntu 16.04 LTS VM and a MacBook Pro running macOS Sierra without issue._   

# *Vaporshell* 

## **cloud**
**/kloud/**  
_noun_  
1. a visible mass of condensed water vapor floating in the atmosphere, typically high above the ground.

***

Vaporshell is a module for Powershell that allows easier and less error prone build outs of AWS CloudFormation JSON templates using familiar syntax and structure to define AWS resources, while simultaneously gaining the capabilities of Powershell and removing the need to work with JSON directly.

Vaporshell allows you to either initialize a new template or import an existing template, add appropriate properties and export it out to JSON.

For those that are familiar with [Troposphere for Python by CloudTools](https://github.com/cloudtools/troposphere), this aims to be an equivalent option for Powershell users.

***

### Like what's happening and want to send over some coffee money for fuel? Invoke-Donation by clicking below!

[![Donate through Paypal](http://i.imgur.com/bE5YaCm.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=GU6CJMFGVP6ZS)

***

## How to Install

You can install the module directly from [Powershell Gallery](https://www.powershellgallery.com/packages/vaporshell) by running the following command in and administrator Powershell console:

`Install-Module -Name Vaporshell`

NOTE: This requires the PowerShellGet module. This comes standard for Windows 10, Linux and MacOS users that have Powershell, but may require installation for other OS's. [Please check out Getting Started with the Gallery](https://www.powershellgallery.com/) for more info. 

***

## Test Notes

Continous testing and development is being done in Windows, MacOS and Linux (Ubuntu). **If your OS of choice can run Powershell, you should have no issues running this module.** 

***

## Disclaimer

This module is only to be used to ease creation of CloudFormation templates. Any stack creations within AWS are the responsibility of the person/group deploying it, so please validate any template builds using `aws cloudformation validate-template`! ([Click here for documentation from AWS](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/validate-template.html))

If you find any oddities with the template build, please open an issue here on GitHub and include your script with sensitive data redacted, what you were expecting it to add to the template and what actually was added. 

Thanks!

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
            "UserData"   = (Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues "Queue=",(Add-FnRef -Ref "MyQueue")))
            "AvailabilityZone" = "us-east-1a"
            "ImageId"          = (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "$_AWSRegion" -SecondLevelKey "32")
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
            "UserData"   = (Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues "Queue=",(Add-FnRef -Ref "MyQueue")))
            "AvailabilityZone" = "us-east-1b"
            "ImageId"          = (Add-FnFindInMap -MapName "RegionMap" -TopLevelKey "$_AWSRegion" -SecondLevelKey "32")
        })
    )
)
$template.AddOutput((New-VaporOutput -LogicalId "PrimaryLoadBalancerDNSName" -Description "The DNSName of the primary load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "PrimaryLoadBalancer" -AttributeName "DNSName") -Condition "CreateTestResources"))
```