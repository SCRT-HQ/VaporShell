function Add-VSKinesisFirehoseDeliveryStreamCopyCommand {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.CopyCommand resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.CopyCommand resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html

    .PARAMETER CopyOptions
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand-copyoptions    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER DataTableColumns
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand-datatablecolumns    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER DataTableName
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand-datatablename    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.CopyCommand')]
    [cmdletbinding()]
    Param
    (
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
        $CopyOptions,
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
        $DataTableColumns,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $DataTableName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.CopyCommand'
    }
}
