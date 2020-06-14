function Add-ConIf {
    <#
    .SYNOPSIS
        Adds the condition function "Fn::If" to a resource property

    .DESCRIPTION
        Returns one value if the specified condition evaluates to true and another value if the specified condition evaluates to false. Currently, AWS CloudFormation supports the Fn::If intrinsic function in the metadata attribute, update policy attribute, and property values in the Resources section and Outputs sections of a template. You can use the AWS::NoValue pseudo parameter as a return value to remove the corresponding property.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if

    .PARAMETER ConditionName
        A reference to a condition in the Conditions section. Use the condition's name to reference it.

    .PARAMETER ValueIfTrue
        A value to be returned if the specified condition evaluates to true.

    .PARAMETER ValueIfFalse
        A value to be returned if the specified condition evaluates to false.

    .EXAMPLE
        Add-ConIf -ConditionName "CreateNewSecurityGroup" -ValueIfTrue (Add-FnRef -Ref "NewSecurityGroup") -ValueIfFalse (Add-FnRef -Ref "ExistingSecurityGroup")

        When the template is exported, this will convert to: {"Fn::If":["CreateNewSecurityGroup",{"Ref":"NewSecurityGroup"},{"Ref":"ExistingSecurityGroup"}]}

    .NOTES
        You can use the following functions in the Fn::If condition:
            Fn::Base64
            Fn::FindInMap
            Fn::GetAtt
            Fn::GetAZs
            Fn::If
            Fn::Join
            Fn::Select
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([ConIf])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [string]
        $ConditionName,
        [parameter(Mandatory,Position = 1)]
        [object]
        $ValueIfTrue,
        [parameter(Mandatory,Position = 2)]
        [object]
        $ValueIfFalse
    )
    $obj = [ConIf]::new($ConditionName,$ValueIfTrue,$ValueIfFalse)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj.ToJson($true))`n"
    $obj
}
