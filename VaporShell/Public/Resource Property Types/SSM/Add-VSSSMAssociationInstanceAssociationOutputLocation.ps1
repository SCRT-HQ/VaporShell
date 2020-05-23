function Add-VSSSMAssociationInstanceAssociationOutputLocation {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::Association.InstanceAssociationOutputLocation resource property to the template. InstanceAssociationOutputLocation is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies an Amazon S3 bucket where you want to store the results of this association request.

    .DESCRIPTION
        Adds an AWS::SSM::Association.InstanceAssociationOutputLocation resource property to the template.
InstanceAssociationOutputLocation is a property of the AWS::SSM::Association: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html resource that specifies an Amazon S3 bucket where you want to store the results of this association request.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html

    .PARAMETER S3Location
        S3OutputLocation is a property of the InstanceAssociationOutputLocation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html property that specifies an Amazon S3 bucket where you want to store the results of this request.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html#cfn-ssm-association-instanceassociationoutputlocation-s3location
        UpdateType: Mutable
        Type: S3OutputLocation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.Association.InstanceAssociationOutputLocation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3Location
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.Association.InstanceAssociationOutputLocation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
