function Add-FnSub {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Sub" to a resource property

    .DESCRIPTION
        The intrinsic function Fn::Sub substitutes variables in an input string with values that you specify. In your templates, you can use this function to construct commands or outputs that include values that aren't available until you create or update a stack.

        ** Important **
            As Fn::Sub uses ${Var} syntax, it's important to remember to escape the $ at the head of the subbed variable when calling the function, otherwise Powershell will attempt to convert the variable into a value when adding it to the object and break the CloudFormation function's intended use.

            Please see the example below for reference.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html

    .PARAMETER String
        Input string with the Variable names surrounded in braces, i.e. "/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfig --configsets wordpress_install --region ${AWS::Region}"

        You MUST escape the dollar sign before each variable brace when using this module, otherwise Powershell will attempt to convert it to a variable and not take it as a literal string.

    .PARAMETER Mapping
        A hashtable containing mappings, with the key being the variable name and the value being what you would like to substitute for the variable. The value can be another function.

    .EXAMPLE
        Add-FnSub -String "www.`${Domain}" -Mapping @{Domain = (Add-FnRef -Ref "RootDomainName")}

        When the template is exported, this will convert to: {"Fn::Sub":["www.${Domain}",{"Domain":{"Ref":"RootDomainName"}}]}

    .NOTES
        You can use the following functions in the Fn::Sub function:
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
    [OutputType('Vaporshell.Function.Sub')]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [string]
        $String,
        [parameter(Position = 1)]
        [System.Collections.IDictionary]
        $Mapping
    )
    $obj = if ($Mapping) {
        [FnSub]::new($String,$Mapping)
    }
    else {
        [FnSub]::new($String)
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n$($obj.ToJson() | Format-Json)"
    $obj
}
