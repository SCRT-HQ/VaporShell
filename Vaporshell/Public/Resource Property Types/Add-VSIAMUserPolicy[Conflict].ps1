function Add-VSIAMUserPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::IAM::User.Policy resource property to the template

    .DESCRIPTION
        Adds an AWS::IAM::User.Policy resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

    .PARAMETER PolicyDocument
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument    
		PrimitiveType: Json    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER PolicyName
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IAM.User.Policy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                try {
                    $convertible = ConvertTo-Json -InputObject  -Depth 10 -ErrorAction Stop
                    Remove-Variable convertible -ErrorAction SilentlyContinue
                    $true
                }
                catch {
                    throw "You must specify a JSON string for this parameter!"
                }
            })]
        [System.String]
        $PolicyDocument,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $PolicyName
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IAM.User.Policy'
    }
}
