function Add-VSCognitoUserPoolPasswordPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPool.PasswordPolicy resource property to the template

    .DESCRIPTION
        Adds an AWS::Cognito::UserPool.PasswordPolicy resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html

    .PARAMETER RequireNumbers
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirenumbers    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER MinimumLength
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-minimumlength    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER RequireUppercase
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requireuppercase    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER RequireLowercase
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirelowercase    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER RequireSymbols
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requiresymbols    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cognito.UserPool.PasswordPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RequireNumbers,
        [parameter(Mandatory = $false)]
        [Int]
        $MinimumLength,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RequireUppercase,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RequireLowercase,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RequireSymbols
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPool.PasswordPolicy'
    }
}
