---
layout: page 
title: Documentation
description: Getting started with Vaporshell
---

<!-- TOC -->

1. [Setting Up Vaporshell](#setting-up-vaporshell)
    1. [Prerequisites](#prerequisites)
    2. [Installing the Module](#installing-the-module)
2. [Building a Vaporshell Template](#building-a-vaporshell-template)
    1. [Begin: Import and Initialize](#begin-import-and-initialize)
    2. [Process: Fill It Out](#process-fill-it-out)
        1. [Import the module](#import-the-module)
        2. [Initialize the template](#initialize-the-template)
        3. [Add the S3 bucket resource to the template object](#add-the-s3-bucket-resource-to-the-template-object)
        4. [Add multiple Outputs to the template](#add-multiple-outputs-to-the-template)
    1. [End: Export and Validate](#end-export-and-validate)
1. [Tips, Tricks and Gotchas](#tips-tricks-and-gotchas)
    1. [Powershell First](#powershell-first)
    2. [Pseudo Parameters as Built-In Variables](#pseudo-parameters-as-built-in-variables)
2. [Different Strokes](#different-strokes)

<!-- /TOC -->



## Setting Up Vaporshell
### Prerequisites

In order to install Vaporshell from the Powershell Gallery and run it successfully once installed, the following must be true:

1. Powershell v3.0 or greater is installed.
    - If you are running on Windows, you can check this off after confirming the installed version via running `$PSVersionTable` to show your PS version. Typically, you'll only be on a lower version if you're running Windows 7 / Server 2008 and have not upgraded WMF yet.
    - If you are not running Windows, head over to the official [Powershell GitHub page](https://github.com/powershell/powershell#get-powershell) for details on how to install Powershell on your system.
2. The PowershellGet module is installed.
    - If you are running Windows 10, WMF 5.1, or are running Linux or macOS, you're covered.
    - If you do not have it, you can install PowershellGet by:
        1. [Upgrading your WMF installation to the latest version](http://aka.ms/wmf5latest)
        2. [Installing the module via MSI installer directly](http://go.microsoft.com/fwlink/?LinkID=746217&clcid=0x409)

**BONUS:** Support for validating the template has been added into `Export-Vaporshell`, with create-stack planned to be added soon as well. To ensure cross-platform compatibility, these leverage the [AWS CLI tools](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html). In order to take advantage of them, you will need to have the AWS CLI tools [installed](http://docs.aws.amazon.com/cli/latest/userguide/installing.html), [configured](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-quick-configuration) and **available in your PATH**.  

Running `Export-Vaporshell -Path $path -VaporshellTemplate $template -ValidateTemplate` would be the same as running the following command against the resulting JSON template file:

`aws cloudformation validate-template --template-body fileb://$fileUrlConverted`

Have any suggestions to extend that? Let us know! [Click here to view the AWS CLI command reference for Cloudformation](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/index.html)

### Installing the Module

To install Vaporshell from the PowershellGallery, open Powershell and run the following command:  
`Install-Module -Name Vaporshell -Scope CurrentUser`

_If you would like to install for all users, run the following command in an **elevated** Powershell prompt:_  
`Install-Module -Name Vaporshell`

***

## Building a Vaporshell Template

### Begin: Import and Initialize

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

### Process: Fill It Out
The `Vaporshell.Template` object contains ScriptMethods to add and remove items from the template. For example, to add a resource to the template, you'll use the `AddResource()` script method found on the template object. You would do the same for Parameters (`AddParameter()`), Metadata (`AddMetadata()`), Outputs (`AddOutput()`), etc. Need to remove something? Call the appropriate `Remove*()` method and pass the Logical ID of the item you are trying to remove as the parameter, i.e. `$template.RemoveResource("S3Bucket")`.

Here's a quick conversion of an [AWS sample template](https://s3-us-west-1.amazonaws.com/cloudformation-templates-us-west-1/S3_Website_Bucket_With_Retain_On_Delete.template) into Vaporshell, followed by the JSON example from AWS. This template adds 1 Resource (an S3 Bucket) and 2 Outputs:

{% highlight powershell linenos %}
# Import the module
Import-Module Vaporshell

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
{% endhighlight %}


JSON sample: [Amazon S3 bucket with a deletion policy](https://s3-us-west-1.amazonaws.com/cloudformation-templates-us-west-1/S3_Website_Bucket_With_Retain_On_Delete.template)

{% highlight json linenos %}
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
{% endhighlight %}

### End: Export and Validate

Once you have your template object filled out, the next step is to export it to a template file. At the end of your template script you would just need to add the following:  
{% highlight powershell linenos %}
# Set your template path (update to your preferred template location - this is just an example)
$JSON = ".\path\to\template.json"

# Export the template to file, including -Force to overwrite an existing template (not required)
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -Force
{% endhighlight %}

Want to also leverage AWS CLI Tools to validate the exported template? As long as the AWS CLI Tools are installed, configured (minimum is adding the key, secret and setting the default region), you can add the `-ValidateTemplate` switch to the `Export-Vaporshell` call:  
{% highlight powershell linenos %}
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -ValidateTemplate
{% endhighlight %}

***

## Tips, Tricks and Gotchas

### Powershell First

**Vaporshell is pure Powershell and should be approached accordingly**  
This means that you should work with commands the same as you would on any other script. The most common case in point is wrapping your commands in parentheses when adding them in as Parameter Values. In the following example, you can see the parentheses around the full `New-VaporOutput` command, as well as around the value of the `-Value` parameter, as we're using another function to add an `Fn::GetAtt` Intrinsic Function for the value.
{% highlight powershell linenos %}
$template.AddOutput(  (New-VaporOutput -LogicalId "WebsiteURL" -Value (Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "WebsiteURL") -Description "URL for website hosted on S3")  )
{% endhighlight %}
### Pseudo Parameters as Built-In Variables

Having trouble remembering those Pseudo Parameters? Vaporshell includes them as imported variables for convenience. They all begin with `$_AWS`, so start typing then tab to cycle through them in most ISE's.

**When using these in commands, i.e. `Add-FnRef -Ref "$_AWSRegion"`, make sure you surround the variable in double quotes to cast to string indefinitely**

Here's a table of the variables for a quick reference:

| Pseudo Parameter | Vaporshell Variable |
|:----------------:|:-------------------:|
|  $_AWSAccountId  |    AWS::AccountId   |
|   $_AWSInclude   |     AWS::Include    |
| $_AWSNotificationARNs | AWS::NotificationARNs |
|   $_AWSNoValue   |     AWS::NoValue    |
|    $_AWSRegion   |     AWS::Region     |
|   $_AWSStackId   |     AWS::StackId    |
|  $_AWSStackName  |    AWS::StackName   |


***

## Different Strokes

The beauty of leveraging Powershell is that you can organize your template builds in whatever way works best for you; the only constant being that you'll need to keep your `Import-Module Vaporshell` at the top of the script to prevent errors from functions not being found. 

Here are a couple examples of different approaches to laying out a template script:

***

Store your Vaporshell objects in variables at the top of the script, adding them in after using the variables.
_This approach allows you to clearly list your resources, parameters, etc, at the top of the script_

{% highlight powershell linenos %}
# Import the module
Import-Module Vaporshell

# Store your template properties in variables
$s3Bucket = New-VSS3Bucket -LogicalId "S3Bucket" -AccessControl "PublicRead" -WebsiteConfiguration (Add-VSS3BucketWebsiteConfiguration -IndexDocument "index.html" -ErrorDocument "error.html") -DeletionPolicy Retain
$websiteUrl = New-VaporOutput -LogicalId "WebsiteURL" -Value (Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "WebsiteURL") -Description "URL for website hosted on S3"
$s3BucketSecureUrl = New-VaporOutput -LogicalId "S3BucketSecureURL" -Value (Add-FnJoin -ListOfValues "https://",(Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "DomainName")) -Description "Name of S3 bucket to hold website content"

# Initialize the template and add the resource and outputs
$template = Initialize-Vaporshell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."
$template.AddResource($s3Bucket)
$template.AddOutput($websiteUrl,$s3BucketSecureUrl)

# Export and validate
$JSON = ".\path\to\template.json"
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -Force -ValidateTemplate -Verbose
{% endhighlight %}

***

Store your Vaporshell objects in external scripts, then **dot source** the script files to add them to the template.
_This allows external resource sharing so you can cut down on code even further. Dot sourcing is critical to ensure that the external script is loaded into the current session, not called in an external process!_

{% highlight powershell linenos %}
# Import the module
Import-Module Vaporshell

# Sets the current location to your shared templates folder (example only)
Set-Location "C:\Templates\Shared"

# Initialize the template and add the resource and outputs
$template = Initialize-Vaporshell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."
$template.AddResource( (. ".\S3Bucket.ps1") )
$template.AddOutput( (. ".\websiteUrl.ps1"), (. ".\s3BucketSecureUrl.ps1") )

# Export and validate
$JSON = "C:\Templates\template.json"
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -Force -ValidateTemplate -Verbose
{% endhighlight %}