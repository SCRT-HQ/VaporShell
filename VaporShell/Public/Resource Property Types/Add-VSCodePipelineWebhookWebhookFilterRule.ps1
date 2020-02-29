function Add-VSCodePipelineWebhookWebhookFilterRule {
    <#
    .SYNOPSIS
        Adds an AWS::CodePipeline::Webhook.WebhookFilterRule resource property to the template. The event criteria that specify when a webhook notification is sent to your URL.

    .DESCRIPTION
        Adds an AWS::CodePipeline::Webhook.WebhookFilterRule resource property to the template.
The event criteria that specify when a webhook notification is sent to your URL.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html

    .PARAMETER JsonPath
        A JsonPath expression that will be applied to the body/payload of the webhook. The value selected by the JsonPath expression must match the value specified in the MatchEquals field, otherwise the request will be ignored. For more information about JsonPath expressions, see Java JsonPath implementation: https://github.com/json-path/JsonPath in GitHub.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-jsonpath
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER MatchEquals
        The value selected by the JsonPath expression must match what is supplied in the MatchEquals field, otherwise the request will be ignored. Properties from the target action configuration can be included as placeholders in this value by surrounding the action configuration key with curly braces. For example, if the value supplied here is "refs/heads/{Branch}" and the target action has an action configuration property called "Branch" with a value of "master", the MatchEquals value will be evaluated as "refs/heads/master". For a list of action configuration properties for built-in action types, see Pipeline Structure Reference Action Requirements: https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-matchequals
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodePipeline.Webhook.WebhookFilterRule')]
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
        $JsonPath,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MatchEquals
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodePipeline.Webhook.WebhookFilterRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
