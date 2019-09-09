function Add-VSLambdaAliasAliasRoutingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::Alias.AliasRoutingConfiguration resource property to the template. The traffic-shifting: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html configuration of a Lambda function alias.

    .DESCRIPTION
        Adds an AWS::Lambda::Alias.AliasRoutingConfiguration resource property to the template.
The traffic-shifting: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html configuration of a Lambda function alias.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html

    .PARAMETER AdditionalVersionWeights
        The name of the second alias, and the percentage of traffic that's routed to it.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html#cfn-lambda-alias-aliasroutingconfiguration-additionalversionweights
        DuplicatesAllowed: False
        ItemType: VersionWeight
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.Alias.AliasRoutingConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Lambda.Alias.VersionWeight"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AdditionalVersionWeights
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.Alias.AliasRoutingConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
