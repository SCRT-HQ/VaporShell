function Add-FnImportValue {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::ImportValue" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::ImportValue returns the value of an output exported by another stack. You typically use this function to create cross-stack references. In the following example template snippets, Stack A exports VPC security group values and Stack B imports them.

        Note:
            The following restrictions apply to cross-stack references:
                * For each AWS account, Export names must be unique within a region.
                * You can't create cross-stack references across regions. You can use the intrinsic function Fn::ImportValue to import only values that have been exported within the same region.
                * For outputs, the value of the Name property of an Export can't use Ref or GetAtt functions that depend on a resource.
                * Similarly, the ImportValue function can't include Ref or GetAtt functions that depend on a resource.
                * You can't delete a stack if another stack references one of its outputs.
                * You can't modify or remove an output value that is referenced by another stack.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
    
    .PARAMETER ValueToImport
        The stack output value that you want to import.

    .EXAMPLE
        Add-FnImportValue -ValueToImport (Add-FnSub -String "`${NetworkStackNameParameter}-SubnetID")

        # When the template is exported, this will convert to: {"Fn::ImportValue":{"Fn::Sub":"${NetworkStackNameParameter}-SubnetID"}}

    .NOTES
        You can use the following functions in the Fn::ImportValue function. The value of these functions can't depend on a resource.
            Fn::Base64
            Fn::FindInMap
            Fn::If
            Fn::Join
            Fn::Select
            Fn::Split
            Fn::Sub
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Condition.If","Vaporshell.Function.Base64","Vaporshell.Function.FindInMap","Vaporshell.Function.Join","Vaporshell.Function.Select","Vaporshell.Function.Split","Vaporshell.Function.Sub","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The ValueToImport parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        $ValueToImport
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::ImportValue" = $ValueToImport
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.ImportValue'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}