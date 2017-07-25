function Add-VSS3BucketCorsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.CorsConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::S3::Bucket.CorsConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html

    .PARAMETER CorsRules
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html#cfn-s3-bucket-cors-corsrule    
		DuplicatesAllowed: False    
		ItemType: CorsRule    
		Required: True    
		Type: List    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.CorsConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.S3.Bucket.CorsRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $CorsRules
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.CorsConfiguration'
    }
}
