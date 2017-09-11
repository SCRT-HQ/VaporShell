function Add-VSWAFSqlInjectionMatchSetSqlInjectionMatchTuple {
    <#
    .SYNOPSIS
        Adds an AWS::WAF::SqlInjectionMatchSet.SqlInjectionMatchTuple resource property to the template

    .DESCRIPTION
        Adds an AWS::WAF::SqlInjectionMatchSet.SqlInjectionMatchTuple resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html

    .PARAMETER FieldToMatch
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples-fieldtomatch    
		Required: True    
		Type: FieldToMatch    
		UpdateType: Mutable    

    .PARAMETER TextTransformation
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples-texttransformation    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAF.SqlInjectionMatchSet.SqlInjectionMatchTuple')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $FieldToMatch,
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
        $TextTransformation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAF.SqlInjectionMatchSet.SqlInjectionMatchTuple'
    }
}
