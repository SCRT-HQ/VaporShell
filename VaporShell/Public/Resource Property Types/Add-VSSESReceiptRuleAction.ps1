function Add-VSSESReceiptRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::SES::ReceiptRule.Action resource property to the template

    .DESCRIPTION
        Adds an AWS::SES::ReceiptRule.Action resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html

    .PARAMETER BounceAction
		Type: BounceAction    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-bounceaction    
		UpdateType: Mutable    

    .PARAMETER S3Action
		Type: S3Action    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-s3action    
		UpdateType: Mutable    

    .PARAMETER StopAction
		Type: StopAction    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-stopaction    
		UpdateType: Mutable    

    .PARAMETER SNSAction
		Type: SNSAction    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-snsaction    
		UpdateType: Mutable    

    .PARAMETER WorkmailAction
		Type: WorkmailAction    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-workmailaction    
		UpdateType: Mutable    

    .PARAMETER AddHeaderAction
		Type: AddHeaderAction    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-addheaderaction    
		UpdateType: Mutable    

    .PARAMETER LambdaAction
		Type: LambdaAction    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-lambdaaction    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SES.ReceiptRule.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $BounceAction,
        [parameter(Mandatory = $false)]
        $S3Action,
        [parameter(Mandatory = $false)]
        $StopAction,
        [parameter(Mandatory = $false)]
        $SNSAction,
        [parameter(Mandatory = $false)]
        $WorkmailAction,
        [parameter(Mandatory = $false)]
        $AddHeaderAction,
        [parameter(Mandatory = $false)]
        $LambdaAction
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.ReceiptRule.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
