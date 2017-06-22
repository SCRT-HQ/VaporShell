---
layout: page 
title: Module Digest
description: How to use Vaporshell in its entirety
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

<!-- TOC -->

- [The Vaporshell.Template Object](#the-vaporshelltemplate-object)
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
    - [Outputs](#outputs)
    - [Transforms](#transforms)
        - [Includes](#includes)
- [Intrinsic Functions](#intrinsic-functions)
- [Condition Functions](#condition-functions)
- [Pseudo Parameters](#pseudo-parameters)

<!-- /TOC -->

## The Vaporshell.Template Object

The `Vaporshell.Template` is created when you either initialize a new template with `Initialize-Vaporshell` or import an existing one with `Import-Vaporshell`. This object includes an Add and Remove script method for each of the following template attributes (examples of each for reference):

- Metadata  
{% highlight powershell linenos %}
$template = Initialize-Vaporshell
$template.AddMetadata( (New-VaporMetadata -LogicalId "Instances" -Metadata @{Description = "These are my instances"}) )
$template.RemoveMetadata( "Instances" )
{% endhighlight %}

- Parameters  
{% highlight powershell linenos %}
$template = Initialize-Vaporshell
$template.AddParameter( (New-VaporParameter -LogicalId "DBPassword" -Type String -NoEcho ) )
$template.RemoveParameter( "DBPassword" )
{% endhighlight %}

- Mappings  
{% highlight powershell linenos %}
$template = Initialize-Vaporshell
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
{% highlight powershell linenos %}
$template = Initialize-Vaporshell
$template.AddCondition( (New-VaporCondition -LogicalId "CreateProdResources" -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvType") -SecondValue "prod") ) )
$template.RemoveCondition( "CreateProdResources" )
{% endhighlight %}

- Resources  
{% highlight powershell linenos %}
$template = Initialize-Vaporshell
$template.AddResource( (New-VSApiGatewayRestApi -LogicalId "MyApi" -Description "My REST API") )
$template.RemoveResource( "MyApi" )
{% endhighlight %}

- Outputs  
{% highlight powershell linenos %}
$template = Initialize-Vaporshell
$template.AddOutput( (New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") ) )
$template.RemoveOutput( "BackupLoadBalancerDNSName" )
{% endhighlight %}

- Transforms  
_If you'd like to add/remove a top level transform, you would use the following script methods:_
{% highlight powershell linenos %}
$template = Initialize-Vaporshell
$template.AddTransform( (Add-Include -Location "s3://MyAmazonS3BucketName/single_wait_condition.yaml") )
$template.RemoveTransform( )
{% endhighlight %}


## Walking Through the Template Anatomy

### Base Attributes

The Base Attributes are common items within your CloudFormation template that are more descriptive of the template itself than of resources.


#### FormatVersion

The AWSTemplateFormatVersion section (optional) identifies the capabilities of the template. The latest template format version is 2010-09-09 and is currently the only valid value.

The FormatVersion is set with `Initialize-Vaporshell` and defaults to `"2010-09-09"`

#### Description

The template description. Total byte count for the description has to be greater than 0 but less than 1024.

The description is set with `Initialize-Vaporshell`


#### Metadata

You can use the optional Metadata section to include arbitrary JSON objects that provide details about the template.

You add metadata to an already existing `Vaporshell.Template` object by using the object's `AddMetadata()` script property combined with `New-VaporMetadata`.


### Parameters

You can use the optional Parameters section to pass values into your template when you create a stack. With parameters, you can create templates that are customized each time you create a stack. Each parameter must contain a value when you create a stack. You can specify a default value to make the parameter optional so that you don't need to pass in a value when creating a stack. AWS CloudFormation will use the default value.

You add parameters to an already existing `Vaporshell.Template` object by using the object's `AddParameter()` script property combined with `New-VaporParameter`.


### Mappings

The optional Mappings section matches a key to a corresponding set of named values. For example, if you want to set values based on a region, you can create a mapping that uses the region name as a key and contains the values you want to specify for each specific region. You use the `Add-FnFindInMap` intrinsic function to retrieve values in a map.

You add mappings to an already existing `Vaporshell.Template` object by using the object's `AddMapping()` script property combined with `New-VaporMapping`.


### Conditions

The optional Conditions section includes statements that define when a resource is created or when a property is defined. For example, you can compare whether a value is equal to another value. Based on the result of that condition, you can conditionally create resources.

You add conditions to an already existing `Vaporshell.Template` object by using the object's `AddCondition()` script property combined with `New-VaporCondition`.


### Resources

The required Resources section declares the AWS resources that you want to include in the stack, such as an Amazon EC2 instance or an Amazon S3 bucket. You must declare each resource separately; however, if you have multiple resources of the same type, you can declare them together by separating them with commas.

You add resources to an already existing `Vaporshell.Template` object by using the object's `AddResource()` script property combined with `New-VaporResource`. This is especially useful when you'd like to add a custom resource type to your template.


#### Resource Types

Vaporshell also comes with ~200 specific Resource Type functions to make things easier. These all use `New-VaporResource` to compile the final object, so you are free to use any of those with the `AddResource()` script method as well. **To make them easier to identify, all Resource Type functions follow this naming convention: `New-VS{ResourceName}`**

You can view the available resource type functions on the glossary page: [Resource Types](http://vaporshell.io/docs/glossary#resource-types)


#### Resource Property Types

Resource Property Types are typically not passed directly into a template attribute. These are special object types that fit into Resource Type parameters. They can be easily identified as well; all Resource Property Type functions follow this naming convention: `Add-VS{ResourcePropertyName}`

Here's an example of a resource property [ApiGatewayDeploymentStageDescription] passed in as a parameter for a resource [ApiGatewayDeployment], with another resource property passed into it [ApiGatewayDeploymentMethodSetting]:

{% highlight powershell linenos %}
$template.AddResource(
    (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment" -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) ) )
)
{% endhighlight %}



#### Resource Attributes

Resource Attributes are typically policies surrounding resources, such as Creation Policies, Deletion Policies and Update Policies. All resources have them as available parameters. There are 2 helper functions for adding in a CreationPolicy and/or UpdatePolicy to a resource:

- `Add-CreationPolicy`
- `Add-UpdatePolicy`

[AWS Documentation on Resource Attributes](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-product-attribute-reference.html)

### Outputs

The optional Outputs section declares output values that you can import into other stacks (to create cross-stack references), return in response (to describe stack calls), or view on the AWS CloudFormation console. For example, you can output the S3 bucket name for a stack to make the bucket easier to find.

You add outputs to an already existing `Vaporshell.Template` object by using the object's `AddOutput()` script property combined with `New-VaporOutput`.


### Transforms

_At this time, only `Includes` transforms are supported. **Serverless Application Model (SAM) support is in development and planned for release soon!**_

#### Includes

You can add an Includes at the top-level of an already existing `Vaporshell.Template` object by using the object's `AddTransform()` script property combined with `Add-Include` passed in as the parameter.

You can also use the AWS::Include transform anywhere within the AWS CloudFormation template except in the template parameters section or the template version field. For example, you can use AWS::Include in the mappings section.


## Intrinsic Functions

AWS CloudFormation provides several built-in functions that help you manage your stacks. Use intrinsic functions in your templates to assign values to properties that are not available until runtime. 

Vaporshell includes functions for each Intrinsic function. You can find more info [in the Glossary](http://vaporshell.io/docs/glossary/#intrinsic-functions).

Here's an example where the `Add-FnRef` function is used to fill out the RestApiId for an APIGatewayDeployment:

{% highlight powershell linenos %}
$template.AddResource(
    (New-VSApiGatewayDeployment -LogicalId "GatewayDeployment" -RestApiId (Add-FnRef -Ref "MyApi"))
)
{% endhighlight %}


## Condition Functions

You can use intrinsic functions, such as `Add-FnIf`, ``Add-FnEquals`, and `Add-FnNot`, to conditionally create stack resources. These conditions are evaluated based on input parameters that you declare when you create or update a stack. After you define all your conditions, you can associate them with resources or resource properties in the Resources and Outputs sections of a template.

You define all conditions in the Conditions section of a template except for `Add-FnIf` conditions. You can use the `Add-FnIf` condition in the metadata attribute, update policy attribute, and property values in the Resources section and Outputs sections of a template.

You can find more info [in the Glossary](http://vaporshell.io/docs/glossary/#condition-functions).

## Pseudo Parameters

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



<br />
<br />
<center>
    <ul class="actions">
        <li><a href="{{ "/docs" | prepend: site.url }}" class="button fit"><i class="fa fa-chevron-left"></i> Getting Started</a></li>
        <li><a href="{{ "/docs/tips" | prepend: site.url }}" class="button special fit"><i class="fa fa-chevron-right"></i> Tips & Tricks</a></li>
    </ul>
</center>