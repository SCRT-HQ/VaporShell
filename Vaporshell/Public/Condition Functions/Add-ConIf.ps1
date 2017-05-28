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

        # When the template is exported, this will convert to: {"Fn::If":["CreateNewSecurityGroup",{"Ref":"NewSecurityGroup"},{"Ref":"ExistingSecurityGroup"}]}

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        $ConditionName,
        [parameter(Mandatory = $true,Position = 1)]
        $ValueIfTrue,
        [parameter(Mandatory = $true,Position = 2)]
        $ValueIfFalse
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::If" = @($ConditionName,$ValueIfTrue,$ValueIfFalse)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Condition','Vaporshell.Condition.If'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}