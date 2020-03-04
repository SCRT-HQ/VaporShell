function Add-VSWAFv2WebACLNotStatementTwo {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.NotStatementTwo resource property to the template. Logical NOT statement used to negate the match results of a nested statement.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.NotStatementTwo resource property to the template.
Logical NOT statement used to negate the match results of a nested statement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementtwo.html

    .PARAMETER Statement
        Logical NOT statement used to negate the match results of a nested statement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementtwo.html#cfn-wafv2-webacl-notstatementtwo-statement
        UpdateType: Mutable
        Type: StatementThree

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.NotStatementTwo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Statement
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.NotStatementTwo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
