function New-VaporOutput {
    <#
    .SYNOPSIS
        Adds an Output object to the template

    .DESCRIPTION
        The optional Outputs section declares output values that you can import into other stacks (to create cross-stack references), return in response (to describe stack calls), or view on the AWS CloudFormation console. For example, you can output the S3 bucket name for a stack to make the bucket easier to find.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html

    .PARAMETER LogicalId
        An identifier for the current output. The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.

    .PARAMETER Description
        A String type that describes the output value. The description can be a maximum of 4 K in length.

    .PARAMETER Value
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

    .PARAMETER Condition
        Logical ID of the condition that this output needs to be true in order to be provisioned.

    .EXAMPLE
        $template = Initialize-Vaporshell -Description "Testing Output"
        $template.AddOutput(
            (
                New-VaporOutput -LogicalId "BackupLoadBalancerDNSName" -Description "The DNSName of the backup load balancer" -Value (Add-FnGetAtt -LogicalNameOfResource "BackupLoadBalancer" -AttributeName "DNSName") -Condition "CreateProdResources"
            )
        )

        When the template is exported, this will convert to:
            {
                "AWSTemplateFormatVersion": "2010-09-09",
                "Description": "Testing Output",
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
    [OutputType([VSOutput])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [ValidateLogicalId()]
        [string]
        $LogicalId,
        [parameter(Position = 1)]
        [string]
        $Description,
        [parameter(Mandatory,Position = 2)]
        $Value,
        [parameter(Position = 3)]
        [Export]
        $Export,
        [parameter(Position = 4)]
        [string]
        $Condition
    )
    $obj = [VSOutput]::new($PSBoundParameters)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
    $obj
}
