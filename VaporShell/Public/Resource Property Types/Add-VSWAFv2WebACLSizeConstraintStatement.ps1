function Add-VSWAFv2WebACLSizeConstraintStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.SizeConstraintStatement resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.SizeConstraintStatement resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html

    .PARAMETER FieldToMatch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-fieldtomatch
        UpdateType: Mutable
        Type: FieldToMatch

    .PARAMETER ComparisonOperator
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-comparisonoperator
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Size
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-size
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER TextTransformations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-texttransformations
        UpdateType: Mutable
        Type: List
        ItemType: TextTransformation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.SizeConstraintStatement')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $FieldToMatch,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ComparisonOperator,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Size,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.WebACL.TextTransformation"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TextTransformations
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.SizeConstraintStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
