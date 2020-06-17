function Add-ConNot {
    <#
    .SYNOPSIS
        Adds the condition function "Fn::Not" to a resource property

    .DESCRIPTION
        Returns true for a condition that evaluates to false or returns false for a condition that evaluates to true. Fn::Not acts as a NOT operator.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-not

    .PARAMETER Condition
        A condition such as Fn::Equals that evaluates to true or false.

    .EXAMPLE
        Add-ConNot -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvironmentType") -SecondValue "prod")

        When the template is exported, this will convert to: {"Fn::Equals":["sg-mysggroup",{"Ref":"ASecurityGroup"}]}

    .NOTES
        You can use the following functions in this condition statement:
            Fn::FindInMap
            Ref
            Other condition functions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([ConNot])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [object[]]
        $Conditions
    )
    $obj = [ConNot]::new($Conditions)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
    $obj
}
