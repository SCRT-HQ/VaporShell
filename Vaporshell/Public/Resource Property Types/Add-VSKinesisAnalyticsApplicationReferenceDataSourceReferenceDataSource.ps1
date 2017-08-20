function Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceDataSource resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceDataSource resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html

    .PARAMETER ReferenceSchema
		Type: ReferenceSchema    
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-referenceschema    
		UpdateType: Mutable    

    .PARAMETER TableName
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-tablename    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER S3ReferenceDataSource
		Type: S3ReferenceDataSource    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-s3referencedatasource    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceDataSource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ReferenceSchema,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $TableName,
        [parameter(Mandatory = $false)]
        $S3ReferenceDataSource
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceDataSource'
    }
}
