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
    [OutputType('Vaporshell.Condition.Not')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function","Vaporshell.Condition"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $Condition
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Not" = @($Condition)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Condition','Vaporshell.Condition.Not'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n" 
} 