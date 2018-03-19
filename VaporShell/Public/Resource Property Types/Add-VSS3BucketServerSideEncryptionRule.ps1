function Add-VSS3BucketServerSideEncryptionRule {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.ServerSideEncryptionRule resource property to the template

    .DESCRIPTION
        Adds an AWS::S3::Bucket.ServerSideEncryptionRule resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html

    .PARAMETER ServerSideEncryptionByDefault
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html#cfn-s3-bucket-serversideencryptionrule-serversideencryptionbydefault    
		Required: False    
		Type: ServerSideEncryptionByDefault    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.ServerSideEncryptionRule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ServerSideEncryptionByDefault
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.ServerSideEncryptionRule'
    }
}
