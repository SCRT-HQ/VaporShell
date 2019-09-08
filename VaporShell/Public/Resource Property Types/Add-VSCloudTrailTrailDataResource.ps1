function Add-VSCloudTrailTrailDataResource {
    <#
    .SYNOPSIS
        Adds an AWS::CloudTrail::Trail.DataResource resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudTrail::Trail.DataResource resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html

    .PARAMETER Type
        The resource type in which you want to log data events. You can specify AWS::S3::Object or AWS::Lambda::Function resources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Values
        An array of Amazon Resource Name ARN strings or partial ARN strings for the specified objects.
+ To log data events for all objects in all S3 buckets in your AWS account, specify the prefix as arn:aws:s3:::.
**Note**
This will also enable logging of data event activity performed by any user or role in your AWS account, even if that activity is performed on a bucket that belongs to another AWS account.
+ To log data events for all objects in an S3 bucket, specify the bucket and an empty object prefix such as arn:aws:s3:::bucket-1/. The trail logs data events for all objects in this S3 bucket.
+ To log data events for specific objects, specify the S3 bucket and object prefix such as arn:aws:s3:::bucket-1/example-images. The trail logs data events for objects in this S3 bucket that match the prefix.
+ To log data events for all functions in your AWS account, specify the prefix as arn:aws:lambda.
**Note**
This will also enable logging of Invoke activity performed by any user or role in your AWS account, even if that activity is performed on a function that belongs to another AWS account.
+ To log data events for a specific Lambda function, specify the function ARN.
**Note**
Lambda function ARNs are exact. For example, if you specify a function ARN *arn:aws:lambda:us-west-2:111111111111:function:helloworld*, data events will only be logged for *arn:aws:lambda:us-west-2:111111111111:function:helloworld*. They will not be logged for *arn:aws:lambda:us-west-2:111111111111:function:helloworld2*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-values
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudTrail.Trail.DataResource')]
    [cmdletbinding()]
    Param
    (
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
        $Type,
        [parameter(Mandatory = $false)]
        $Values
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudTrail.Trail.DataResource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
