---
layout: page 
title: Documentation
---

<!-- TOC -->

- [Setting Up](#setting-up)
    - [Prerequisites](#prerequisites)
    - [Installing the Module](#installing-the-module)
- [Bare Minimums](#bare-minimums)
    - [Create the Template Object](#create-the-template-object)
    - [Add a Resource (or 20)](#add-a-resource-or-20)

<!-- /TOC -->

## Setting Up
### Prerequisites

In order to install Vaporshell from the Powershell Gallery and run it successfully once installed, the following must be true:

1. Powershell v3.0 or greater is installed.
    - If you are running on Windows, you can check this off.
    - If you are not running Windows, head over to the official [Powershell GitHub page](https://github.com/powershell/powershell#get-powershell) for details on how to install Powershell on your system.
2. The PowershellGet module is installed.
    - If you are running Windows 10, WMF 5.1, or are running Linux or macOS, you're covered.
    - If you do not have it, you can install PowershellGet by:
        1. [Upgrading your WMF installation to the latest version](http://aka.ms/wmf5latest)
        2. [Installing the module via MSI installer directly](http://go.microsoft.com/fwlink/?LinkID=746217&clcid=0x409)

### Installing the Module

To install Vaporshell from the PowershellGallery, open Powershell and run the following command:  
```powershell
Install-Module -Name Vaporshell -Scope CurrentUser
```
> _If you would like to install for all users, run the following command in an **elevated** Powershell prompt:_
```powershell
Install-Module -Name Vaporshell
```

***

## Bare Minimums

### Create the Template Object

The first thing you will need to do in your build script is import Vaporshell into the current session:  
`Import-Module Vaporshell`

Next, you need to initialize a new template OR import an existing JSON template to build onto:  
_NOTE: YAML templates are not yet supported with Vaporshell_

**Initialize**
* Parameters:
    - FormatVersion: Defaults to '2010-09-09' -- currently the only available Format Version for CloudFormation
    - Description: The description of your template. Not required if that's preferred.
`$template = Initialize-Vaporshell -Description "CloudFormation Template 1"`

_OR_

**Import**
* Parameters:
    - Path: This is the path to your existing JSON template file
`$template = Import-Vaporshell -Path ".\CFNtemplate00.json"`

### Add a Resource (or 20)
CloudFormation templates require at least 1 resource to work at all. To add a resource to you'll used the `AddResource()` script method on the `$template` object. Here's a quick conversion of an AWS sample template into Vaporshell followed by the JSON example from AWS:


```powershell
# Initialize the template
$template = Initialize-Vaporshell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."

# Add the S3 bucket resource to the template object
$template.AddResource(
    (New-VSS3Bucket -LogicalId "S3Bucket" -AccessControl "PublicRead" -WebsiteConfiguration (Add-VSS3BucketWebsiteConfiguration -IndexDocument "index.html" -ErrorDocument "error.html") -DeletionPolicy Retain)
)

# Add multiple Outputs to the template
$template.AddOutput(
    # Add the WebsiteURL output
    (New-VaporOutput -LogicalId "WebsiteURL" -Value (Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "WebsiteURL") -Description "URL for website hosted on S3"),

    # Add the S3BucketSecureURL output
    (New-VaporOutput -LogicalId "S3BucketSecureURL" -Value (Add-FnJoin -ListOfValues "https://",(Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "DomainName")) -Description "Name of S3 bucket to hold website content")
)
```


JSON sample: [Amazon S3 bucket with a deletion policy](https://s3-us-west-1.amazonaws.com/cloudformation-templates-us-west-1/S3_Website_Bucket_With_Retain_On_Delete.template)
```json
{
  "AWSTemplateFormatVersion" : "2010-09-09",

  "Description" : "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template.",

  "Resources" : {
    "S3Bucket" : {
      "Type" : "AWS::S3::Bucket",
      "Properties" : {
        "AccessControl" : "PublicRead",
        "WebsiteConfiguration" : {
          "IndexDocument" : "index.html",
          "ErrorDocument" : "error.html"      
         }
      },
      "DeletionPolicy" : "Retain"
    }
  },

  "Outputs" : {
    "WebsiteURL" : {
      "Value" : { "Fn::GetAtt" : [ "S3Bucket", "WebsiteURL" ] },
      "Description" : "URL for website hosted on S3"
    },
    "S3BucketSecureURL" : {
      "Value" : { "Fn::Join" : [ "", [ "https://", { "Fn::GetAtt" : [ "S3Bucket", "DomainName" ] } ] ] },
      "Description" : "Name of S3 bucket to hold website content"
    }
  } 
}
```