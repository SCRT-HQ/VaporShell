---
layout: page 
title: Getting Started
description: A high-level overview on template building basics with Vaporshell
label1: Category
data1: Documentation
label2: Depth
data2: Shallow
---

<!-- TOC -->

- [Setting Up Vaporshell](#setting-up-vaporshell)
    - [Prerequisites](#prerequisites)
    - [Installing the Module](#installing-the-module)
- [Building a Vaporshell Template](#building-a-vaporshell-template)
    - [Begin: Import and Initialize](#begin-import-and-initialize)
    - [Process: Fill It Out](#process-fill-it-out)
    - [End: Export and Validate](#end-export-and-validate)
- [Diving Deeper](#diving-deeper)

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

**BONUS PT 2:** Want to work in YAML instead? We leverage AWSLabs' `cfn-flip` to convert between JSON and YAML, as `cfn-flip` is cross-platform and is designed specifically for converting CloudFormation templates. [Click here to check the GitHub page out](https://github.com/awslabs/aws-cfn-template-flip); **you will need to use `pip` to install `cfn-flip`**  

Running `Export-Vaporshell -Path $path -VaporshellTemplate $template -As YAML` would be the same as running the following command against the resulting JSON template file:

{% highlight powershell linenos %}
Export-Vaporshell -Path $path -VaporshellTemplate $template
cfn-flip $path | Set-Content $path -Force
{% endhighlight %}

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
The `Vaporshell.Template` object contains ScriptMethods to add and remove items from the template. For example, to add a resource to the template, you'll use the `AddResource()` script method found on the template object. You would do the same for Parameters (`AddParameter()`), Metadata (`AddMetadata()`), Outputs (`AddOutput()`), etc. Need to remove something? Call the appropriate `Remove*()` method and pass the Logical ID of the item you are trying to remove as the parameter, i.e. `$template.RemoveResource("S3Bucket")`. These are covered completely in the [Module Digest](http://vaporshell.io/docs/digest)!

Here's a quick conversion of an [AWS sample template](https://s3-us-west-1.amazonaws.com/cloudformation-templates-us-west-1/S3_Website_Bucket_With_Retain_On_Delete.template) into Vaporshell, followed by the JSON example from AWS. This template adds 1 Resource (an S3 Bucket) and 2 Outputs:

{% highlight powershell linenos %}
<# Import the module #>
Import-Module Vaporshell

<# Initialize the template #>
$template = Initialize-Vaporshell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."

<# Add the S3 bucket resource to the template object #>
$template.AddResource(
    (New-VSS3Bucket -LogicalId "S3Bucket" -AccessControl "PublicRead" -WebsiteConfiguration (Add-VSS3BucketWebsiteConfiguration -IndexDocument "index.html" -ErrorDocument "error.html") -DeletionPolicy Retain)
)

<# Add multiple Outputs to the template #>
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
<# Set your template path (update to your preferred template location - this is just an example) #>
$JSON = ".\path\to\template.json"

<# Export the template to file, including -Force to overwrite an existing template (not required) #>
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -Force
{% endhighlight %}

Want to also leverage AWS CLI Tools to validate the exported template? As long as the AWS CLI Tools are installed, configured (minimum is adding the key, secret and setting the default region), you can add the `-ValidateTemplate` switch to the `Export-Vaporshell` call:  
{% highlight powershell linenos %}
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -ValidateTemplate
{% endhighlight %}

***

## Diving Deeper

At this point, you've covered Vaporshell at a high level. Head to the Module Digest to dive deeper!


<br />
<center>
    <ul class="actions">
        <li><a href="{{ site.url }}" class="button fit"><i class="fa fa-chevron-left"></i> Home</a></li>
        <li><a href="{{ "/docs/digest" | prepend: site.url }}" class="button special fit">Module Digest <i class="fa fa-chevron-right"></i></a></li>
    </ul>
</center>