function Add-FnRef {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Ref" to a resource property
    
    .DESCRIPTION
        The intrinsic function Ref returns the value of the specified parameter or resource.

            * When you specify a parameter's logical name, it returns the value of the parameter.
            * When you specify a resource's logical name, it returns a value that you can typically use to refer to that resource, such as a physical ID.
            
        When you are declaring a resource in a template and you need to specify another template resource by name, you can use the Ref to refer to that other resource. In general, Ref returns the name of the resource. For example, a reference to an AWS::AutoScaling::AutoScalingGroup returns the name of that Auto Scaling group resource.

        For some resources, an identifier is returned that has another significant meaning in the context of the resource. An AWS::EC2::EIP resource, for instance, returns the IP address, and an AWS::EC2::Instance returns the instance ID.

            Tip
                You can also use Ref to add values to Output messages.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ref.html
    
    .PARAMETER Ref
        The logical name of the resource or parameter you want to reference.

    .EXAMPLE
        # This uses the module's included variable that maps to the AWS Pseudo Parameter, "AWS::Region"

        Add-FnRef -Ref $_AWSRegion

        # When the template is exported, this will convert to: {"Fn::Base64":"AWS CloudFormation"}

    .NOTES
        You cannot use any functions in the Ref function. You must specify a string that is a resource logical ID.

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $Ref
    )
    $obj = New-Object PSObject -Property @{
        Ref = $Ref
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}