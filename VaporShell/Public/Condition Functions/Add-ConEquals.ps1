function Add-ConEquals {
    <#
    .SYNOPSIS
        Adds the condition function "Fn::Equals" to a resource property

    .DESCRIPTION
        Compares if two values are equal. Returns true if the two values are equal or false if they aren't.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-equals

    .PARAMETER FirstValue
        A value of any type that you want to compare against the SecondValue

    .PARAMETER SecondValue
        A value of any type that you want to compare against the FirstValue

    .EXAMPLE
        Add-ConEquals -FirstValue "sg-mysggroup" -SecondValue (Add-FnRef -Ref "ASecurityGroup")

        When the template is exported, this will convert to: {"Fn::Equals":["sg-mysggroup",{"Ref":"ASecurityGroup"}]}

    .EXAMPLE
        Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvironmentType") -SecondValue "prod"

        When the template is exported, this will convert to: {"Fn::Equals":[{"Ref":"EnvironmentType"},"prod"]}

    .NOTES
        You can use the following functions in this condition statement:
            Fn::FindInMap
            Ref
            Other condition functions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([ConEquals])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [object]
        $FirstValue,
        [parameter(Mandatory,Position = 1)]
        [object]
        $SecondValue
    )
    $obj = [ConEquals]::new($FirstValue,$SecondValue)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
    $obj
}
