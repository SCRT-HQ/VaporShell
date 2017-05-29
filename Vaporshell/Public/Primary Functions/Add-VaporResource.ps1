function Add-VaporResource {
    <#
    .SYNOPSIS
        Adds an Resource object to the template
    
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
        The value of the property returned by the aws cloudformation describe-stacks command. The value of an output can include literals, parameter references, pseudo-parameters, a mapping value, or intrinsic functions.
    
    .PARAMETER Export
        The name of the resource output to be exported for a cross-stack reference.

        Note
            The following restrictions apply to cross-stack references:
                * For each AWS account, Export names must be unique within a region.
                * You can't create cross-stack references across regions. You can use the intrinsic function Fn::ImportValue to import only values that have been exported within the same region.
                * For outputs, the value of the Name property of an Export can't use Ref or GetAtt functions that depend on a resource.
                * Similarly, the ImportValue function can't include Ref or GetAtt functions that depend on a resource.
                * You can't delete a stack if another stack references one of its outputs.
                * You can't modify or remove an output value that is referenced by another stack.
                * You can use intrinsic functions to customize the Name value of an export.

    .EXAMPLE
        $template = Initialize-Vaporshell -Description "Testing Outputs"
        $template.AddOutput((
            Add-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") -Condition "CreateProdResources"
        ))

        # When the template is exported, this will convert to: 
            {                                                                                                                      
                "AWSTemplateFormatVersion": "2010-09-09",                                                                            
                "Description": "Testing Outputs",                                                                                    
                "Outputs": {                                                                                                         
                    "BackupLoadBalancerDNSName": {                                                                                     
                    "Description": "The DNSName of the backup load balancer",                                                        
                    "Value": {                                                                                                       
                        "Fn::GetAtt": [                                                                                                
                        "BackupLoadBalancer",                                                                                        
                        "DNSName"                                                                                                    
                        ]                                                                                                              
                    },                                                                                                               
                    "Condition": "CreateProdResources"                                                                               
                    }                                                                                                                  
                }                                                                                                                    
            }

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Output')]
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
        [parameter(Mandatory = $false,Position = 1)]
        [System.String]
        $Description,
        [parameter(Mandatory = $true,Position = 2)]
        $Value,
        [parameter(Mandatory = $false,Position = 3)]
        $Export,
        [parameter(Mandatory = $false,Position = 4)]
        $Condition
    )
    if ($Description) {
        $data = [PSCustomObject][Ordered]@{
            "Description" = "$Description"
            "Value" = $Value
        }
    }
    else {
        $data = [PSCustomObject][Ordered]@{
            "Value" = $Value
        }
    }
    if ($Export) {
        $data | Add-Member -MemberType NoteProperty -Name "Export" -Value $Export
    }
    if ($Condition) {
        $data | Add-Member -MemberType NoteProperty -Name "Condition" -Value $Condition
    }
    $obj = [PSCustomObject][Ordered]@{
        "LogicalId" = $LogicalId
        "Data" = $data
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Output'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$(@{$obj.LogicalId = $obj.Data} | ConvertTo-Json -Depth 5 -Compress)`n"
}