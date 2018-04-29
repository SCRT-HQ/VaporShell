function Add-ConOr {
    <#
    .SYNOPSIS
        Adds the condition function "Fn::Or" to a resource property
    
    .DESCRIPTION
        Returns true if any one of the specified conditions evaluate to true, or returns false if all of the conditions evaluates to false. Fn::Or acts as an OR operator. The minimum number of conditions that you can include is 2, and the maximum is 10.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or
    
    .PARAMETER Condition
        A condition such as Fn::Equals that evaluates to true or false.

    .EXAMPLE
        Add-ConOr -Conditions (Add-ConEquals -FirstValue "sg-mysggroup" -SecondValue (Add-FnRef -Ref "ASecurityGroup")),(Add-ConEquals -FirstValue "Production" -SecondValue (Add-FnRef -Ref "Environment"))

        When the template is exported, this will convert to: {"Fn::Or":[{"Fn::Equals":["sg-mysggroup",{"Ref":"ASecurityGroup"}]},{"Fn::Equals":["Production",{"Ref":"Environment"}]}]}

    .NOTES
        You can use the following functions in this condition statement:
            Fn::FindInMap
            Ref
            Other condition functions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Condition.Or')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateCount(2,10)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.FindInMap","Vaporshell.Function.Ref","Vaporshell.Condition"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "The MapName parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        [System.Object[]]
        $Conditions
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Or" = @($Conditions)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Condition','Vaporshell.Condition.Or'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}