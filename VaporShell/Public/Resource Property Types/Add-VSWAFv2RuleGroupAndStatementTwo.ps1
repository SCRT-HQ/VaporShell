function Add-VSWAFv2RuleGroupAndStatementTwo {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.AndStatementTwo resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.AndStatementTwo resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementtwo.html

    .PARAMETER Statements
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementtwo.html#cfn-wafv2-rulegroup-andstatementtwo-statements
        UpdateType: Mutable
        Type: StatementThrees

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.AndStatementTwo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Statements
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.AndStatementTwo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
