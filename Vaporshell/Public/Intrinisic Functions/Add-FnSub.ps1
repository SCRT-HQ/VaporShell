function Add-FnSub {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Sub" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::Sub substitutes variables in an input string with values that you specify. In your templates, you can use this function to construct commands or outputs that include values that aren't available until you create or update a stack.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html
    
    .PARAMETER String
        Input string with the Variable names surrounded in braces, i.e. "/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfig --configsets wordpress_install --region ${AWS::Region}"
        
        You MUST escape the dollar sign before each variable brace when using this module, otherwise Powershell will attempt to convert it to a variable and not take it as a literal string.

    .PARAMETER Mapping
        A hashtable containing mappings, with the key being the variable name and the value being what you would like to substitute for the variable. The value can be another function.

    .EXAMPLE
        Add-FnSub -String "www.`${Domain}" -Mapping @{Domain = (Add-FnRef -Ref "RootDomainName")}

        # When the template is exported, this will convert to: {"Fn::Sub":["www.${Domain}",{"Domain":{"Ref":"RootDomainName"}}]}

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
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [System.String]
        $String,
        [parameter(Mandatory = $false,Position = 1)]
        [System.Collections.Hashtable]
        $Mapping
    )
    if ($Mapping) {
        $obj = [PSCustomObject][Ordered]@{
            "Fn::Sub" = @($String,$Mapping)
        }
    }
    else {
        $obj = [PSCustomObject][Ordered]@{
            "Fn::Sub" = $String
        }
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.Sub'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}