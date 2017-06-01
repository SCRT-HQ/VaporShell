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
    [OutputType('Vaporshell.Condition.Equals')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        $FirstValue,
        [parameter(Mandatory = $true,Position = 1)]
        $SecondValue
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Equals" = @($FirstValue,$SecondValue)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Condition','Vaporshell.Condition.Equals'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}