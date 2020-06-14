function Add-FnTransform {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Transform" to a resource property

    .DESCRIPTION
        The intrinsic function Fn::Transform specifies a macro to perform custom processing on part of a stack template. Macros enable you to perform custom processing on templates, from simple actions like find-and-replace operations to extensive transformations of entire templates. For more information, see Using AWS CloudFormation Macros to Perform Custom Processing on Templates.

        You can also use Fn::Transform to call the AWS::Include Transform transform, which is a macro hosted by AWS CloudFormation.

    .LINK
        https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html

    .PARAMETER Name
        The name of the macro you want to perform the processing.

    .PARAMETER Parameters
        The list parameters, specified as a hashtable, to pass to the macro.

    .EXAMPLE
        Add-FnTransform -Name "AWS::Include" -Parameters @{Location = (Add-FnRef "InputValue")}

        This example calls the AWS::Include transform, specifying that the location to retrieve a template snippet from is passed in the InputValue parameter.

        When the template is exported, this will convert to:
            {
                "Fn::Transform" : {
                    "Name" : "AWS::Include",
                    "Parameters" : {
                        "Location" : { "Ref" : "InputValue" }
                    }
                }
            }

    .NOTES
        AWS CloudFormation passes any intrinsic function calls included in Fn::Transform to the specified macro as literal strings. For more information, see AWS CloudFormation Macro Function Interface.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([FnTransform])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [String]
        $Name,
        [parameter(Mandatory,Position = 1)]
        [System.Collections.IDictionary]
        $Parameters
    )
    $obj = [FnTransform]@{
        Name = $Name
        Parameters = $Parameters
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj.ToJson($true))`n"
    $obj
}
