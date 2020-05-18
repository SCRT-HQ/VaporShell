---
layout: page 
title: Module Digest
description: How to use VaporShell in its entirety
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

<!-- TOC -->

- [The VaporShell.Template Object](#the-VaporShelltemplate-object)
- [Walking Through the Template Anatomy](#walking-through-the-template-anatomy)
    - [Base Attributes](#base-attributes)
        - [FormatVersion](#formatversion)
        - [Description](#description)
        - [Metadata](#metadata)
    - [Parameters](#parameters)
    - [Mappings](#mappings)
    - [Conditions](#conditions)
    - [Resources](#resources)
        - [Resource Types](#resource-types)
        - [Resource Property Types](#resource-property-types)
        - [Resource Attributes](#resource-attributes)
        - [Adding UserData](#adding-userdata)
            - [Using the String parameter](#using-the-string-parameter)
            - [Using the File parameter](#using-the-file-parameter)
    - [Outputs](#outputs)
    - [Transforms](#transforms)
        - [Includes](#includes)
        - [Serverless](#serverless)
- [Intrinsic Functions](#intrinsic-functions)
- [Condition Functions](#condition-functions)
- [Pseudo Parameters](#pseudo-parameters)

<!-- /TOC -->

## The VaporShell.Template Object

The `VaporShell.Template` is created when you either initialize a new template with `Initialize-VaporShell` or import an existing one with `Import-VaporShell`. This object includes an Add and Remove script method for each of the following template attributes (examples of each for reference):

- Metadata  
{% highlight PowerShell linenos %}
$template = Initialize-VaporShell
$template.AddMetadata( (New-VaporMetadata -LogicalId "Instances" -Metadata @{Description = "These are my instances"}) )
$template.RemoveMetadata( "Instances" )
{% endhighlight %}

- Parameters  
{% highlight PowerShell linenos %}
$template = Initialize-VaporShell
$template.AddParameter( (New-VaporParameter -LogicalId "DBPassword" -Type String -NoEcho ) )
$template.RemoveParameter( "DBPassword" )
{% endhighlight %}

- Mappings  
{% highlight PowerShell linenos %}
$template = Initialize-VaporShell
$template.AddMapping( (New-VaporMapping -LogicalId "RegionMap" -Map @{
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
)
$template.RemoveMapping( "RegionMap" )
{% endhighlight %}

- Conditions  
{% highlight PowerShell linenos %}
$template = Initialize-VaporShell
$template.AddCondition( (New-VaporCondition -LogicalId "CreateProdResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvType") -SecondValue "prod") ) )
$template.RemoveCondition( "CreateProdResources" )
{% endhighlight %}

- Resources  
{% highlight PowerShell linenos %}
$template = Initialize-VaporShell
$template.AddResource( (New-VSApiGatewayRestApi -LogicalId "MyApi" -Description "My REST API") )
$template.RemoveResource( "MyApi" )
{% endhighlight %}

- Outputs  
{% highlight PowerShell linenos %}
$template = Initialize-VaporShell
$template.AddOutput( (New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") ) )
$template.RemoveOutput( "BackupLoadBalancerDNSName" )
{% endhighlight %}

- Transforms  
_If you'd like to add/remove a top level transform, you would use the following script methods:_
{% highlight PowerShell linenos %}
$template = Initialize-VaporShell
$template.AddTransform( (Add-Include -Location "s3://MyAmazonS3BucketName/single_wait_condition.yaml") )
$template.RemoveTransform( )
{% endhighlight %}


## Walking Through the Template Anatomy

### Base Attributes

The Base Attributes are common items within your CloudFormation template that are more descriptive of the template itself than of resources.


#### FormatVersion

The AWSTemplateFormatVersion section (optional) identifies the capabilities of the template. The latest template format version is 2010-09-09 and is currently the only valid value.

The FormatVersion is set with `Initialize-VaporShell` and defaults to `"2010-09-09"`

#### Description

The template description. Total byte count for the description has to be greater than 0 but less than 1024.

The description is set with `Initialize-VaporShell`


#### Metadata

You can use the optional Metadata section to include arbitrary JSON objects that provide details about the template.

You add metadata to an already existing `VaporShell.Template` object by using the object's `AddMetadata()` script property combined with `New-VaporMetadata`.


### Parameters

You can use the optional Parameters section to pass values into your template when you create a stack. With parameters, you can create templates that are customized each time you create a stack. Each parameter must contain a value when you create a stack. You can specify a default value to make the parameter optional so that you don't need to pass in a value when creating a stack. AWS CloudFormation will use the default value.

You add parameters to an already existing `VaporShell.Template` object by using the object's `AddParameter()` script property combined with `New-VaporParameter`.


### Mappings

The optional Mappings section matches a key to a corresponding set of named values. For example, if you want to set values based on a region, you can create a mapping that uses the region name as a key and contains the values you want to specify for each specific region. You use the `Add-FnFindInMap` intrinsic function to retrieve values in a map.

You add mappings to an already existing `VaporShell.Template` object by using the object's `AddMapping()` script property combined with `New-VaporMapping`.


### Conditions

The optional Conditions section includes statements that define when a resource is created or when a property is defined. For example, you can compare whether a value is equal to another value. Based on the result of that condition, you can conditionally create resources.

You add conditions to an already existing `VaporShell.Template` object by using the object's `AddCondition()` script property combined with `New-VaporCondition`.


### Resources

The required Resources section declares the AWS resources that you want to include in the stack, such as an Amazon EC2 instance or an Amazon S3 bucket. You must declare each resource separately; however, if you have multiple resources of the same type, you can declare them together by separating them with commas.

You add resources to an already existing `VaporShell.Template` object by using the object's `AddResource()` script property combined with `New-VaporResource`. This is especially useful when you'd like to add a custom resource type to your template.


#### Resource Types

VaporShell also comes with ~200 specific Resource Type functions to make things easier. These all use `New-VaporResource` to compile the final object, so you are free to use any of those with the `AddResource()` script method as well. **To make them easier to identify, all Resource Type functions follow this naming convention: `New-VS{ResourceName}`**

You can view the available resource type functions on the glossary page: [Resource Types](https://vaporshell.io/docs/glossary#resource-types)


#### Resource Property Types

Resource Property Types are typically not passed directly into a template attribute. These are special object types that fit into Resource Type parameters. They can be easily identified as well; all Resource Property Type functions follow this naming convention: `Add-VS{ResourcePropertyName}`

Here's an example of a resource property [ApiGatewayDeploymentStageDescription] passed in as a parameter for a resource [ApiGatewayDeployment], with another resource property passed into it [ApiGatewayDeploymentMethodSetting]:

{% highlight PowerShell linenos %}
$template.AddResource(
    (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment" -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) ) )
)
{% endhighlight %}



#### Resource Attributes

Resource Attributes are typically policies surrounding resources, such as Creation Policies, Deletion Policies and Update Policies. All resources have them as available parameters. There are 2 helper functions for adding in a CreationPolicy and/or UpdatePolicy to a resource:

- `Add-CreationPolicy`
- `Add-UpdatePolicy`

[AWS Documentation on Resource Attributes](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-product-attribute-reference.html)


#### Adding UserData

Adding UserData to a Resource with VaporShell is designed to be quick and easy with the `Add-UserData` function. You have the option to either provide an array of Strings and/or Intrinsic Functions, a single String or Intrinsic Function, or even read from a local file.

Important items to remember when using `Add-UserData`:
- Special characters in `-String` parameter values should be written in PowerShell format (i.e. `n instead of \n). These will be converted to JSON format once the VaporShell template is exported.
- If using the `-File` parameter, the local file must not contain any Intrinsic Functions, as they will be escaped when the template object is exported and taken as string literals.
- If using the `-File` parameter with PowerShell or CMD script files (Windows-centric UserData), you do not need to place the PowerShell/script open and close tags in the script file. This allows you to develop and test the script without them to prevent errors from unknown commands being run.
    - If the file is a .ps1, `Add-UserData` will add in the open `<PowerShell>` and close `</PowerShell>` tags if the script file does not already contain them. 
    - If the file is a .bat or .cmd, it will add in `<script>` and `</script>` if not already present on the file itself.

##### Using the String parameter

Here's an example of how you would use the String parameter:

{% highlight PowerShell linenos %}
New-VSEC2Instance -UserData (Add-UserData -String `
    "#!/bin/bash -xe`n",
    "yum update -y aws-cfn-bootstrap`n",
    "/opt/aws/bin/cfn-init -v \`n",
    "    --stack Stack1 \`n",
    "    --resource LaunchConfig \`n",
    "    --configsets wordpress_install \`n",
    "    --region ", (Add-FnRef "$_AWSRegion"), "`n",
    "/opt/aws/bin/cfn-signal -e $? \`n",
    "    --stack Stack1 \`n",
    "    --resource WebServerGroup \`n",
    "    --region ", (Add-FnRef "$_AWSRegion"), "`n" ) -LogicalId "MyInstance" -AvailabilityZone "us-west-1a" -ImageId "ami-6411e20d"
{% endhighlight %}


##### Using the File parameter

Here's an example of how you would do the same thing using the File parameter:
{% highlight PowerShell linenos %}
New-VSEC2Instance -UserData (Add-UserData -File ".\UserData.sh") -LogicalId "MyInstance" -AvailabilityZone "us-west-1a" -ImageId "ami-6411e20d"
{% endhighlight %}

**NOTE: This file will explicitly state the region, not leverage the Ref Intrinsic Function to pull the deployment region**

### Outputs

The optional Outputs section declares output values that you can import into other stacks (to create cross-stack references), return in response (to describe stack calls), or view on the AWS CloudFormation console. For example, you can output the S3 bucket name for a stack to make the bucket easier to find.

You add outputs to an already existing `VaporShell.Template` object by using the object's `AddOutput()` script property combined with `New-VaporOutput`.


### Transforms

#### Includes

You can add an Includes at the top-level of an already existing `VaporShell.Template` object by using the object's `AddTransform()` script property combined with `Add-Include` passed in as the parameter.

You can also use the AWS::Include transform anywhere within the AWS CloudFormation template except in the template parameters section or the template version field. For example, you can use AWS::Include in the mappings section.


#### Serverless

VaporShell has full coverage of the Serverless transform resources as of version 0.7.10. If you add any Serverless resources to the template object via `$template.AddResource()`, it will automatically add the top-level Transform.

Here's an example of using Serverless transforms to build this [example template found on awslabs' GitHub](https://github.com/awslabs/serverless-application-model/blob/master/examples/2016-10-31/api_backend/template.yaml):

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


Resulting JSON:

{% highlight json linenos %}
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Simple CRUD webservice. State is stored in a SimpleTable (DynamoDB) resource.",
    "Transform": "AWS::Serverless-2016-10-31",
    "Resources": {
        "GetFunction": {
            "Type": "AWS::Serverless::Function",
            "Properties": {
                "Handler": "index.get",
                "Runtime": "nodejs4.3",
                "CodeUri": "s3://\u003cbucket\u003e/api_backend.zip",
                "Policies": "AmazonDynamoDBReadOnlyAccess",
                "Environment": {
                    "Variables": {
                        "TABLE_NAME": {
                            "Ref": "Table"
                        }
                    }
                },
                "Events": {
                    "GetResource": {
                        "Properties": {
                            "Path": "/resource/{resourceId}",
                            "Method": "get"
                        },
                        "Type": "Api"
                    }
                }
            }
        },
        "PutFunction": {
            "Type": "AWS::Serverless::Function",
            "Properties": {
                "Handler": "index.put",
                "Runtime": "nodejs4.3",
                "CodeUri": "s3://\u003cbucket\u003e/api_backend.zip",
                "Policies": "AmazonDynamoDBFullAccess",
                "Environment": {
                    "Variables": {
                        "TABLE_NAME": {
                            "Ref": "Table"
                        }
                    }
                },
                "Events": {
                    "PutResource": {
                        "Properties": {
                            "Path": "/resource/{resourceId}",
                            "Method": "put"
                        },
                        "Type": "Api"
                    }
                }
            }
        },
        "DeleteFunction": {
            "Type": "AWS::Serverless::Function",
            "Properties": {
                "Handler": "index.delete",
                "Runtime": "nodejs4.3",
                "CodeUri": "s3://\u003cbucket\u003e/api_backend.zip",
                "Policies": "AmazonDynamoDBFullAccess",
                "Environment": {
                    "Variables": {
                        "TABLE_NAME": {
                            "Ref": "Table"
                        }
                    }
                },
                "Events": {
                    "DeleteResource": {
                        "Properties": {
                            "Path": "/resource/{resourceId}",
                            "Method": "delete"
                        },
                        "Type": "Api"
                    }
                }
            }
        },
        "Table": {
            "Type": "AWS::Serverless::SimpleTable"
        }
    }
}
{% endhighlight %}


Resulting YAML ([if cfn-flip is installed](https://github.com/awslabs/aws-cfn-template-flip) as well):

{% highlight yaml linenos %}
AWSTemplateFormatVersion: '2010-09-09'
Description: Simple CRUD webservice. State is stored in a SimpleTable (DynamoDB) resource.
Transform: AWS::Serverless-2016-10-31
Resources:
  GetFunction:
    Type: AWS::Serverless::Function
    Properties:
      Handler: index.get
      Runtime: nodejs4.3
      CodeUri: s3://<bucket>/api_backend.zip
      Policies: AmazonDynamoDBReadOnlyAccess
      Environment:
        Variables:
          TABLE_NAME: !Ref 'Table'
      Events:
        GetResource:
          Properties:
            Path: /resource/{resourceId}
            Method: get
          Type: Api
  PutFunction:
    Type: AWS::Serverless::Function
    Properties:
      Handler: index.put
      Runtime: nodejs4.3
      CodeUri: s3://<bucket>/api_backend.zip
      Policies: AmazonDynamoDBFullAccess
      Environment:
        Variables:
          TABLE_NAME: !Ref 'Table'
      Events:
        PutResource:
          Properties:
            Path: /resource/{resourceId}
            Method: put
          Type: Api
  DeleteFunction:
    Type: AWS::Serverless::Function
    Properties:
      Handler: index.delete
      Runtime: nodejs4.3
      CodeUri: s3://<bucket>/api_backend.zip
      Policies: AmazonDynamoDBFullAccess
      Environment:
        Variables:
          TABLE_NAME: !Ref 'Table'
      Events:
        DeleteResource:
          Properties:
            Path: /resource/{resourceId}
            Method: delete
          Type: Api
  Table:
    Type: AWS::Serverless::SimpleTable
{% endhighlight %}


## Intrinsic Functions

AWS CloudFormation provides several built-in functions that help you manage your stacks. Use intrinsic functions in your templates to assign values to properties that are not available until runtime. 

VaporShell includes functions for each Intrinsic function. You can find more info [in the Glossary](https://vaporshell.io/docs/glossary/#intrinsic-functions).

Here's an example where the `Add-FnRef` function is used to fill out the RestApiId for an APIGatewayDeployment:

{% highlight PowerShell linenos %}
$template.AddResource(
    (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment" -RestApiId (Add-FnRef -Ref "MyApi"))
)
{% endhighlight %}


## Condition Functions

You can use intrinsic functions, such as `Add-FnIf`, ``Add-FnEquals`, and `Add-FnNot`, to conditionally create stack resources. These conditions are evaluated based on input parameters that you declare when you create or update a stack. After you define all your conditions, you can associate them with resources or resource properties in the Resources and Outputs sections of a template.

You define all conditions in the Conditions section of a template except for `Add-FnIf` conditions. You can use the `Add-FnIf` condition in the metadata attribute, update policy attribute, and property values in the Resources section and Outputs sections of a template.

You can find more info [in the Glossary](https://vaporshell.io/docs/glossary/#condition-functions).

## Pseudo Parameters

Having trouble remembering those Pseudo Parameters? VaporShell includes them as imported variables for convenience. They all begin with `$_AWS`, so start typing then tab to cycle through them in most ISE's.

**When using these in commands, i.e. `Add-FnRef -Ref "$_AWSRegion"`, make sure you surround the variable in double quotes to cast to string indefinitely**

Here's a table of the variables for a quick reference:

| Pseudo Parameter | VaporShell Variable |
|:----------------:|:-------------------:|
|  $_AWSAccountId  |    AWS::AccountId   |
|   $_AWSInclude   |     AWS::Include    |
| $_AWSNotificationARNs | AWS::NotificationARNs |
|   $_AWSNoValue   |     AWS::NoValue    |
|    $_AWSRegion   |     AWS::Region     |
|   $_AWSStackId   |     AWS::StackId    |
|  $_AWSStackName  |    AWS::StackName   |



<br />
<center>
    <ul class="actions">
        <li><a href="{{ "/docs" | prepend: site.url }}" class="button fit"><i class="fa fa-chevron-left"></i> Getting Started</a></li>
        <li><a href="{{ "/docs/tips" | prepend: site.url }}" class="button special fit">Tips & Tricks <i class="fa fa-chevron-right"></i></a></li>
    </ul>
</center>