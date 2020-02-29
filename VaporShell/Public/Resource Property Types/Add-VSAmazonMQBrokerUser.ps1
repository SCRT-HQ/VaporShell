function Add-VSAmazonMQBrokerUser {
    <#
    .SYNOPSIS
        Adds an AWS::AmazonMQ::Broker.User resource property to the template. The list of ActiveMQ users (persons or applications who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~. This value must be 2-100 characters long.

    .DESCRIPTION
        Adds an AWS::AmazonMQ::Broker.User resource property to the template.
The list of ActiveMQ users (persons or applications who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~. This value must be 2-100 characters long.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html

    .PARAMETER Username
        The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes - . _ ~. This value must be 2-100 characters long.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-username
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Groups
        The list of groups 20 maximum to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes - . _ ~. This value must be 2-100 characters long.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-groups
        UpdateType: Mutable

    .PARAMETER ConsoleAccess
        Enables access to the the ActiveMQ Web Console for the ActiveMQ user.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-consoleaccess
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Password
        The password of the ActiveMQ user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-password
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AmazonMQ.Broker.User')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","Password")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","Password")]
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
        $Username,
        [parameter(Mandatory = $false)]
        $Groups,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ConsoleAccess,
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
        $Password
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AmazonMQ.Broker.User'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
