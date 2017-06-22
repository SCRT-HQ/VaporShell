---
layout: page
title: Examples
description: CloudFormation template examples built with Vaporshell
label1: Category
data1: Examples
---
<!-- TOC -->

- [Amazon S3 bucket with a deletion policy](#amazon-s3-bucket-with-a-deletion-policy)

<!-- /TOC -->
## Amazon S3 bucket with a deletion policy 

[Link to AWS sample](https://s3-us-west-1.amazonaws.com/cloudformation-templates-us-west-1/S3_Website_Bucket_With_Retain_On_Delete.template)

{% highlight powershell linenos %}
Import-Module Vaporshell
$template = Initialize-Vaporshell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."
$template.AddResource( (New-VSS3Bucket -LogicalId "S3Bucket" -AccessControl "PublicRead" -WebsiteConfiguration (Add-VSS3BucketWebsiteConfiguration -IndexDocument "index.html" -ErrorDocument "error.html") -DeletionPolicy Retain) )
$template.AddOutput(
    (New-VaporOutput -LogicalId "WebsiteURL" -Value (Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "WebsiteURL") -Description "URL for website hosted on S3"),
    (New-VaporOutput -LogicalId "S3BucketSecureURL" -Value (Add-FnJoin -ListOfValues "https://",(Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "DomainName")) -Description "Name of S3 bucket to hold website content")
)
$JSON = ".\path\to\template.json"
Export-Vaporshell -Path $path -VaporshellTemplate $template -Force -ValidateTemplate -Verbose
{% endhighlight %}


<center>
    <ul class="actions">
        <li><a href="{{ "/docs/tips" | prepend: site.url }}" class="button fit"><i class="fa fa-chevron-left"></i> Tips & Tricks</a></li>
        <li><a href="{{ "/docs/glossary" | prepend: site.url }}" class="button special fit"><i class="fa fa-chevron-right"></i> Glossary</a></li>
    </ul>
</center>