---
layout: page 
title: Tips & Tricks
description: Helpful tips and approaches to using Vaporshell
label1: Category
data1: Documentation
---

<!-- TOC -->

- [Tips, Tricks and Gotchas](#tips-tricks-and-gotchas)
    - [Remember the Parentheses!](#remember-the-parentheses)
- [Different Strokes](#different-strokes)

<!-- /TOC -->

## Tips, Tricks and Gotchas

### Remember the Parentheses!

**Vaporshell is pure Powershell and should be approached accordingly**  
This means that you should work with commands the same as you would on any other script. The most common case in point is wrapping your commands in parentheses when adding them in as Parameter Values. In the following example, you can see the parentheses around the full `New-VaporOutput` command, as well as around the value of the `-Value` parameter, as we're using the `Add-FnGetAtt` function to add an `Fn::GetAtt` Intrinsic Function for the value.
{% highlight powershell linenos %}
$template.AddOutput(  (New-VaporOutput -LogicalId "WebsiteURL" -Value (Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "WebsiteURL") -Description "URL for website hosted on S3")  )
{% endhighlight %}


***

## Different Strokes

The beauty of leveraging Powershell is that you can organize your template builds in whatever way works best for you; the only constant being that you'll need to keep your `Import-Module Vaporshell` at the top of the script to prevent errors from functions not being found. 

Here are a couple examples of different approaches to laying out a template script:

***

Store your Vaporshell objects in variables at the top of the script, adding them in after using the variables.
_This approach allows you to clearly list your resources, parameters, etc, at the top of the script_

{% highlight powershell linenos %}
\# Import the module
Import-Module Vaporshell

\# Store your template properties in variables
$s3Bucket = New-VSS3Bucket -LogicalId "S3Bucket" -AccessControl "PublicRead" -WebsiteConfiguration (Add-VSS3BucketWebsiteConfiguration -IndexDocument "index.html" -ErrorDocument "error.html") -DeletionPolicy Retain
$websiteUrl = New-VaporOutput -LogicalId "WebsiteURL" -Value (Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "WebsiteURL") -Description "URL for website hosted on S3"
$s3BucketSecureUrl = New-VaporOutput -LogicalId "S3BucketSecureURL" -Value (Add-FnJoin -ListOfValues "https://",(Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "DomainName")) -Description "Name of S3 bucket to hold website content"

\# Initialize the template and add the resource and outputs
$template = Initialize-Vaporshell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."
$template.AddResource($s3Bucket)
$template.AddOutput($websiteUrl,$s3BucketSecureUrl)

\# Export and validate
$JSON = ".\path\to\template.json"
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -Force -ValidateTemplate -Verbose
{% endhighlight %}

***

Store your Vaporshell objects in external scripts, then **dot source** the script files to add them to the template.
_This allows external resource sharing so you can cut down on code even further. Dot sourcing is critical to ensure that the external script is loaded into the current session, not called in an external process!_

{% highlight powershell linenos %}
\# Import the module
Import-Module Vaporshell

\# Sets the current location to your shared templates folder (example only)
Set-Location "C:\Templates\Shared"

\# Initialize the template and add the resource and outputs
$template = Initialize-Vaporshell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."
$template.AddResource( (. ".\S3Bucket.ps1") )
$template.AddOutput( (. ".\websiteUrl.ps1"), (. ".\s3BucketSecureUrl.ps1") )

\# Export and validate
$JSON = "C:\Templates\template.json"
Export-Vaporshell -Path $JSON -VaporshellTemplate $template -Force -ValidateTemplate -Verbose
{% endhighlight %}



<br />
<center>
    <ul class="actions">
        <li><a href="{{ "/docs/digest" | prepend: site.url }}" class="button fit"><i class="fa fa-chevron-left"></i> Module Digest</a></li>
        <li><a href="{{ "/docs/examples" | prepend: site.url }}" class="button special fit">Examples <i class="fa fa-chevron-right"></i></a></li>
    </ul>
</center>