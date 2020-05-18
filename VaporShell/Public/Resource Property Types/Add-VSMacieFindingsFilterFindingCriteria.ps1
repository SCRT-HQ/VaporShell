function Add-VSMacieFindingsFilterFindingCriteria {
    <#
    .SYNOPSIS
        Adds an AWS::Macie::FindingsFilter.FindingCriteria resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Macie::FindingsFilter.FindingCriteria resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-findingcriteria.html

    .PARAMETER Criterion
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-findingcriteria.html#cfn-macie-findingsfilter-findingcriteria-criterion
        UpdateType: Mutable
        Type: Criterion

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Macie.FindingsFilter.FindingCriteria')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Criterion
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Macie.FindingsFilter.FindingCriteria'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
