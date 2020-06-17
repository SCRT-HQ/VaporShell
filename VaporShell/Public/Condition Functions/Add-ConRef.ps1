function Add-ConRef {
    <#
    .SYNOPSIS
        Adds the condition helper function "Condition" to a resource property to reference a condition on the stack by LogicalId.

    .DESCRIPTION
        Adds the condition helper function "Condition" to a resource property to reference a condition on the stack by LogicalId.

    .LINK
        https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or

    .PARAMETER Ref
        The logical name of the condition you want to reference.

    .EXAMPLE

        Add-ConRef -Condition "HasSSHKey"

        When the template is exported, this will convert to: {"Condition":"HasSSHKey"}

    .NOTES
        You cannot use any functions in the Condition function. You must specify a string that is a condition logical ID.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([ConRef])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [string]
        $Condition
    )
    $obj = [ConRef]::new($Condition)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
    $obj
}
