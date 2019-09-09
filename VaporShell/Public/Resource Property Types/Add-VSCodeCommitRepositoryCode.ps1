function Add-VSCodeCommitRepositoryCode {
    <#
    .SYNOPSIS
        Adds an AWS::CodeCommit::Repository.Code resource property to the template. Information about code to be committed.

    .DESCRIPTION
        Adds an AWS::CodeCommit::Repository.Code resource property to the template.
Information about code to be committed.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html

    .PARAMETER S3
        Information about the Amazon S3 bucket that contains a ZIP file of code to be committed to the repository.

        Type: S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html#cfn-codecommit-repository-code-s3
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeCommit.Repository.Code')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $S3
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeCommit.Repository.Code'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
