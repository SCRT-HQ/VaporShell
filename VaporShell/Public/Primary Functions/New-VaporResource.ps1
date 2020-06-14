function New-VaporResource {
    <#
    .SYNOPSIS
        Adds a Resource object to the template

    .DESCRIPTION
        The required Resources section declares the AWS resources that you want to include in the stack, such as an Amazon EC2 instance or an Amazon S3 bucket. You must declare each resource separately; however, if you have multiple resources of the same type, you can declare them together by separating them with commas.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

        In addition to the logical ID, certain resources also have a physical ID, which is the actual assigned name for that resource, such as an EC2 instance ID or an S3 bucket name. Use the physical IDs to identify resources outside of AWS CloudFormation templates, but only after the resources have been created. For example, you might give an EC2 instance resource a logical ID of MyEC2Instance; but when AWS CloudFormation creates the instance, AWS CloudFormation automatically generates and assigns a physical ID (such as i-28f9ba55) to the instance. You can use this physical ID to identify the instance and view its properties (such as the DNS name) by using the Amazon EC2 console. For resources that support custom names, you can assign your own names (physical IDs) to help you quickly identify resources. For example, you can name an S3 bucket that stores logs as MyPerformanceLogs.

    .PARAMETER Type
        The resource type identifies the type of resource that you are declaring. For example, AWS::EC2::Instance declares an EC2 instance. For a list of all of the resource types, see AWS Resource Types Reference.

    .PARAMETER Properties
        This is a collection of Resource properties are additional options that you can specify for a resource. For example, for each EC2 instance, you must specify an Amazon Machine Image (AMI) ID for that instance.

        You can use any of these 3 types for this parameter; "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Resource.Properties"

    .PARAMETER CreationPolicy
        Use the CreationPolicy attribute when you want to wait on resource configuration actions before stack creation proceeds. For example, if you install and configure software applications on an EC2 instance, you might want those applications to be running before proceeding. In such cases, you can add a CreationPolicy attribute to the instance, and then send a success signal to the instance after the applications are installed and configured.

        You must use the "Add-CreationPolicy" function here.

    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"

    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.

    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.

    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .EXAMPLE
        $template = Initialize-Vaporshell -Description "Testing Resource addition"
        $template.AddResource((
            New-VaporResource -LogicalId "MyInstance" -Type "AWS::EC2::Instance" -Properties [PSCustomObject]@{
                "UserProperties" = (Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues "Queue=",(Add-FnRef -Ref "MyQueue")))
                "AvailabilityZone" = "us-east-1a"
                "ImageId" = "ami-20b65349"
            }
        ))

        When the template is exported, this will convert to:
```json
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Testing Resource addition",
    "Resources": {
        "MyInstance": {
            "Type": "AWS::EC2::Instance",
            "Properties": {
                "UserProperties": {
                    "Fn::Base64": {
                        "Fn::Join": [
                            "",
                            [
                                "Queue=",
                                {
                                "Ref": "MyQueue"
                                }
                            ]
                        ]
                    }
                },
                "AvailabilityZone": "us-east-1a",
                "ImageId": "ami-20b65349"
            }
        }
    }
}
```

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([VSResource])]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [string]
        $LogicalId,
        [parameter(Mandatory = $true,Position = 1)]
        [string]
        $Type,
        [parameter(Position = 2)]
        [VSHashtable]
        $Properties,
        [parameter(Position = 3)]
        [CreationPolicy]
        $CreationPolicy,
        [parameter(Position = 4)]
        [DeletionPolicy]
        $DeletionPolicy,
        [parameter()]
        [UpdateReplacePolicy]
        $UpdateReplacePolicy,
        [parameter(Position = 5)]
        [string[]]
        $DependsOn,
        [parameter(Position = 6)]
        [System.Collections.IDictionary]
        $Metadata,
        [parameter(Position = 7)]
        [UpdatePolicy]
        $UpdatePolicy,
        [parameter(Position = 8)]
        [object]
        $Condition
    )
    $obj = [VSResource]::new($PSBoundParameters)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj.ToJson($true))`n"
    $obj
}
