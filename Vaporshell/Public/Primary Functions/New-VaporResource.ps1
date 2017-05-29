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
    
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order to be provisioned.

    .EXAMPLE
        $template = Initialize-Vaporshell -Description "Testing Resource addition"
        $template.AddResource((
            New-VaporResource -LogicalId "MyInstance" -Type "AWS::EC2::Instance" -Properties @{
                "UserData" = (Add-FnBase64 -ValueToEncode (Add-FnJoin -ListOfValues "Queue=",(Add-FnRef -Ref "MyQueue")))
                "AvailabilityZone" = "us-east-1a"
                "ImageId" = "ami-20b65349"
            }
        ))

        # When the template is exported, this will convert to: 
            {                                                                                                                      
                "AWSTemplateFormatVersion": "2010-09-09",                                                                            
                "Description": "Testing Resource addition",                                                                          
                "Resources": {                                                                                                       
                    "MyInstance": {                                                                                                    
                        "Type": "AWS::EC2::Instance",                                                                                    
                        "Properties": {                                                                                                  
                            "UserData": {                                                                                                  
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

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({
            if ($_ -match "^[a-zA-Z0-9]*$") {
                $true
            }
            else {
                throw 'The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
            }
        })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true,Position = 1)]
        [System.String]
        $Type,
        [parameter(Mandatory = $false,Position = 2)]
        [ValidateScript({
            $allowedTypes = "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Resource.Properties"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The Properties parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        $Properties,
        [parameter(Mandatory = $false,Position = 3)]
        $Condition
    )
    $data = [PSCustomObject][Ordered]@{
        "Type" = $Type
    }
    if ($Properties) {
        $data | Add-Member -MemberType NoteProperty -Name "Properties" -Value $Properties
    }
    if ($Condition) {
        $data | Add-Member -MemberType NoteProperty -Name "Condition" -Value $Condition
    }
    $obj = [PSCustomObject][Ordered]@{
        "LogicalId" = $LogicalId
        "Data" = $data
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$(@{$obj.LogicalId = $obj.Data} | ConvertTo-Json -Depth 5 -Compress)`n"
}