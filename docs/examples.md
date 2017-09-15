---
layout: page
title: Examples
description: CloudFormation template examples built with VaporShell
label1: Category
data1: Examples
---
<!-- TOC -->

- [General Templates](#general-templates)
    - [Amazon S3 bucket with a deletion policy](#amazon-s3-bucket-with-a-deletion-policy)
- [Serverless](#serverless)
    - [API Backend](#api-backend)

<!-- /TOC -->
## General Templates  

### Amazon S3 bucket with a deletion policy 

[Link to AWS sample](https://s3-us-west-1.amazonaws.com/cloudformation-templates-us-west-1/S3_Website_Bucket_With_Retain_On_Delete.template)

{% highlight PowerShell linenos %}
Import-Module VaporShell
$template = Initialize-VaporShell -Description "AWS CloudFormation Sample Template S3_Website_Bucket_With_Retain_On_Delete: Sample template showing how to create a publicly accessible S3 bucket configured for website access with a deletion policy of retail on delete. **WARNING** This template creates an S3 bucket that will NOT be deleted when the stack is deleted. You will be billed for the AWS resources used if you create a stack from this template."
$template.AddResource( (New-VSS3Bucket -LogicalId "S3Bucket" -AccessControl "PublicRead" -WebsiteConfiguration (Add-VSS3BucketWebsiteConfiguration -IndexDocument "index.html" -ErrorDocument "error.html") -DeletionPolicy Retain) )
$template.AddOutput(
    (New-VaporOutput -LogicalId "WebsiteURL" -Value (Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "WebsiteURL") -Description "URL for website hosted on S3"),
    (New-VaporOutput -LogicalId "S3BucketSecureURL" -Value (Add-FnJoin -ListOfValues "https://",(Add-FnGetAtt -LogicalNameOfResource "S3Bucket" -AttributeName "DomainName")) -Description "Name of S3 bucket to hold website content")
)
$JSON = ".\path\to\template.json"
Export-VaporShell -Path $path -VaporShellTemplate $template -Force -ValidateTemplate -Verbose
{% endhighlight %}


## Serverless

### API Backend

- [GitHub Sample Folder](https://github.com/awslabs/serverless-application-model/tree/master/examples/2016-10-31/api_backend)
- [AWS Sample Template](https://github.com/awslabs/serverless-application-model/blob/master/examples/2016-10-31/api_backend/template.yaml)

{% highlight PowerShell linenos %}
$t = Initialize-VaporShell -Description "Simple CRUD webservice. State is stored in a SimpleTable (DynamoDB) resource."
$t.AddResource(
    ( New-SAMFunction -LogicalId "GetFunction" -Handler "index.get" -Runtime "nodejs4.3" -CodeUri "s3://<bucket>/api_backend.zip" -Policies "AmazonDynamoDBReadOnlyAccess" -Environment (@{TABLE_NAME = (Add-FnRef "Table")}) -Events (Add-SAMApiEventSource -LogicalId "GetResource" -Path "/resource/{resourceId}" -Method "get") ),
    ( New-SAMFunction -LogicalId "PutFunction" -Handler "index.put" -Runtime "nodejs4.3" -CodeUri "s3://<bucket>/api_backend.zip" -Policies "AmazonDynamoDBFullAccess" -Environment (@{TABLE_NAME = (Add-FnRef "Table")}) -Events (Add-SAMApiEventSource -LogicalId "PutResource" -Path "/resource/{resourceId}" -Method "put") ),
    ( New-SAMFunction -LogicalId "DeleteFunction" -Handler "index.delete" -Runtime "nodejs4.3" -CodeUri "s3://<bucket>/api_backend.zip" -Policies "AmazonDynamoDBFullAccess" -Environment (@{TABLE_NAME = (Add-FnRef "Table")}) -Events (Add-SAMApiEventSource -LogicalId "DeleteResource" -Path "/resource/{resourceId}" -Method "delete") ),
    ( New-SAMSimpleTable -LogicalId "Table" )
)
Export-VaporShell -VaporShellTemplate $t
{% endhighlight %}



<br />
<center>
    <ul class="actions">
        <li><a href="{{ "/docs/tips" | prepend: site.url }}" class="button fit"><i class="fa fa-chevron-left"></i> Tips & Tricks</a></li>
        <li><a href="{{ "/docs/glossary" | prepend: site.url }}" class="button special fit">Glossary <i class="fa fa-chevron-right"></i></a></li>
    </ul>
</center>