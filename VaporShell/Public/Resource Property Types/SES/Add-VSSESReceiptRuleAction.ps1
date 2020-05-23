function Add-VSSESReceiptRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::SES::ReceiptRule.Action resource property to the template. An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.

    .DESCRIPTION
        Adds an AWS::SES::ReceiptRule.Action resource property to the template.
An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.

For information about setting up receipt rules, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html

    .PARAMETER BounceAction
        Rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service Amazon SNS.

        Type: BounceAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-bounceaction
        UpdateType: Mutable

    .PARAMETER S3Action
        Saves the received message to an Amazon Simple Storage Service Amazon S3 bucket and, optionally, publishes a notification to Amazon SNS.

        Type: S3Action
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-s3action
        UpdateType: Mutable

    .PARAMETER StopAction
        Terminates the evaluation of the receipt rule set and optionally publishes a notification to Amazon SNS.

        Type: StopAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-stopaction
        UpdateType: Mutable

    .PARAMETER SNSAction
        Publishes the email content within a notification to Amazon SNS.

        Type: SNSAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-snsaction
        UpdateType: Mutable

    .PARAMETER WorkmailAction
        Calls Amazon WorkMail and, optionally, publishes a notification to Amazon SNS.

        Type: WorkmailAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-workmailaction
        UpdateType: Mutable

    .PARAMETER AddHeaderAction
        Adds a header to the received email.

        Type: AddHeaderAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-addheaderaction
        UpdateType: Mutable

    .PARAMETER LambdaAction
        Calls an AWS Lambda function, and optionally, publishes a notification to Amazon SNS.

        Type: LambdaAction
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
